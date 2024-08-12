// Automatic FlutterFlow imports
import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:audioplayers/audioplayers.dart' as Audio;
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:speech_to_text/speech_to_text.dart' as stt;

import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
class SpeechScreen extends StatefulWidget {
  final double? width;
  final double? height;

  //Link _link; //compagnion & oldie attributes
  final Map<String, dynamic>? message;

  SpeechScreen({super.key, this.width, this.height, required this.message});

  //route
  static const routeName = "/speech";

  @override
  SpeechScreenState createState() => SpeechScreenState();
}

class SpeechScreenState extends State<SpeechScreen> {
  //var
  //tts
  String aiText = "";
  String voiceID = ""; //VPOMDYYI7YxuAUKmKPsj
  //stt
  stt.SpeechToText speech = stt.SpeechToText();
  bool _isListening = false;
  String _text = 'Press the button and start speaking';

  //timers
  Timer? _silenceTimer;
  final int _silenceDuration = 3; // Silence duration in seconds

  //util
  bool get isIOS => !kIsWeb && Platform.isIOS;

  bool get isAndroid => !kIsWeb && Platform.isAndroid;

  bool get isWindows => !kIsWeb && Platform.isWindows;

  bool get isWeb => kIsWeb;

  //audio
  late Audio.AudioPlayer _audioPlayer;
  String _audioPath = '';
  bool _isPlaying = false;

  //call timer
  late Timer callTimer;
  int secondsElapsed = 0;

  //states
  //in
  @override
  void initState() {
    // widget.message = ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    super.initState();

    _requestMicrophonePermission();
    speech.initialize();
    startCallTimer();
    _audioPlayer = Audio.AudioPlayer();
    _audioPlayer.onPlayerComplete.listen((_) {
      // Action to be performed when audio playback finishes
      _onAudioComplete();
    });
    //get greeting
    _sendTextToServer("").then(
      (value) => _speak(aiText).then(
        (value) => _playAudio(),
      ),
    );
    //listen
    //_listen();
  }

  //Out
  @override
  void dispose() {
    callTimer.cancel(); // Cancel the timer when the widget is disposed
    super.dispose();
  }

  //Timers Actions
  String _formatTime(int seconds) {
    //int hours = seconds ~/ 3600;
    int minutes = (seconds % 3600) ~/ 60;
    int secs = seconds % 60;
    return '${_twoDigits(minutes)}:${_twoDigits(secs)}';
  }

  String _twoDigits(int n) => n.toString().padLeft(2, '0');

  void startCallTimer() {
    callTimer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        secondsElapsed++;
      });
    });
  }

  //silence
  void _startSilenceTimer() {
    _silenceTimer?.cancel();
    _silenceTimer = Timer(Duration(seconds: _silenceDuration), () {
      if (_isListening) {
        setState(() => _isListening = false);
        speech.stop();
        //send data to gemini
        _sendTextToServer(_text).then(
          (value) => _speak(aiText).then(
            (value) => _playAudio(),
          ),
        );
        //..
      }
    });
  }

  void _resetSilenceTimer() {
    _startSilenceTimer();
  }

  //Microphone auth
  Future<void> _requestMicrophonePermission() async {
    var status = await Permission.microphone.status;
    if (!status.isGranted) {
      await Permission.microphone.request();
    }
  }

  //STT Actions
  void _listen() async {
    if (!_isListening) {
      setState(() => _isListening = true);
      //startListening();
      speech.listen(
        onResult: (val) => setState(() {
          _text = val.recognizedWords;
          _resetSilenceTimer();
        }),
      );
      // Start the timer when oldie speech is over
      _startSilenceTimer();
    } else {
      setState(() => _isListening = false);
      speech.stop();
      _silenceTimer?.cancel();
    }
  }

  //TTS Actions
  //Future _speak(String text) async {}
  Future<void> _speak(String text) async {
    if (voiceID.isEmpty) {
      DocumentSnapshot userDoc = await FirebaseFirestore.instance.collection('User').doc(widget.message!['companion']).get();
      var companion = userDoc.data() as Map<String, dynamic>;
      voiceID = companion['voice_id'];
    }
    final url = Uri.parse('https://api.elevenlabs.io/v1/text-to-speech/$voiceID');
    var apiKey = "sk_f32729b7712b3ebcf67a86e3ca030ec1d8eed101556695d8"; //dotenv.env['ELEVENLABS_API_KEY'];

    final headers = {
      'Content-Type': 'application/json',
      'xi-api-key': apiKey!,
    };

    try {
      final response = await http.post(
        url,
        headers: headers,
        body: jsonEncode({'text': text}),
      );

      if (response.statusCode == 200) {
        final directory = await getApplicationDocumentsDirectory();
        final file = File('${directory.path}/audio_response.wav');
        await file.writeAsBytes(response.bodyBytes);
        setState(() {
          _audioPath = file.path;
        });
        log('Audio saved to ${file.path}');
      } else {
        log('Failed to download audio. Status code: ${response.statusCode}');
      }
    } catch (e) {
      log('Error: $e');
    }
  }

  //play
  void _playAudio() async {
    if (_audioPath.isNotEmpty) {
      // Convert the string to a Source
      Audio.Source source = Audio.DeviceFileSource(_audioPath);
      if (_isPlaying) {
        await _audioPlayer.stop();
      } else {
        await _audioPlayer.play(source);
      }
      setState(() {
        _isPlaying = !_isPlaying;
      });
    }
  }

  //finish
  void _onAudioComplete() {
    // Your action when audio finishes
    _listen();
  }

  //HTTP ACTIONS
  Future<void> _sendTextToServer(String text) async {
    try {
      var response = await http.post(
        Uri.parse('https://trico-gemini.onrender.com/chat'),
        headers: {'Content-Type': 'application/json'},
        body: '{"uid" : ${widget.message!['companion']}, "oldieMessage": "$text"}',
      );
      if (response.statusCode == 200) {
        aiText = json.decode(response.body)["aiResponse"]; // Use TTS to speak the server response
      }
    } catch (e) {
      log('Error sending text: $e');
    }
  }

  //UI Builder
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(210, 173, 246, 1), //#
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: AvatarGlow(
        animate: _isListening,
        glowColor: Theme.of(context).primaryColor,
        duration: const Duration(milliseconds: 2000),
        repeat: true,
        child: FloatingActionButton(
          onPressed: _listen,
          child: Icon(_isListening ? Icons.mic : Icons.mic_none),
        ),
      ),
      body: ListView(
        children: [
          //0
          const SizedBox(
            height: 50,
          ),
          //1
          Center(
            child: Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(120), color: const Color.fromRGBO(255, 248, 240, 0.4)),
              child: Container(
                padding: const EdgeInsets.all(30),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: const Color.fromRGBO(255, 248, 240, 0.7)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(80),
                  child: Image.network(
                    //"https://pbs.twimg.com/profile_images/980145664712740864/aNWjR7MB_400x400.jpg",
                    widget.message!['avatar'],
                    width: 150,
                  ),
                ),
              ),
            ),
          )
          //2
          ,
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(widget.message!['caller'], style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: Color.fromRGBO(255, 248, 240, 1))),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(_formatTime(secondsElapsed), style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Color.fromRGBO(255, 248, 240, 1))),
          )
        ],
      ),
    );
  }
}
