import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'terms_and_conditions_model.dart';
export 'terms_and_conditions_model.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  late TermsAndConditionsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermsAndConditionsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 24.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 15.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        FlutterFlowIconButton(
                                          borderRadius: 10.0,
                                          buttonSize: 40.0,
                                          icon: Icon(
                                            FFIcons.karrowNarrowLeft,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 22.0,
                                          ),
                                          onPressed: () async {
                                            context.safePop();
                                          },
                                        ),
                                        Flexible(
                                          child: Text(
                                            'Terms and conditions',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 0.0, 24.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Flexible(
                                                child: Text(
                                                  'Welcome to Oldies Mate! These terms and conditions outline the rules and regulations for the use of the Oldies Mate mobile application.\n\nBy downloading, installing, or otherwise accessing or using the Oldies Mate mobile application (\"App\"), you agree to be bound by these terms and conditions. If you do not agree with any part of these terms and conditions, you must not use the App.\n\n1. License to Use\n\n1.1. Subject to your compliance with these terms and conditions, Oldies Mate grants you a limited, non-exclusive, non-transferable, revocable license to download, install, and use the App solely for your personal, non-commercial purposes.\n\n1.2. You must not:\n\nModify, adapt, or hack the App or modify another app to falsely imply that it is associated with the App.\nReproduce, distribute, publicly display, or publicly perform the App except as expressly permitted by Oldies Mate.\nUse the App for any illegal or unauthorized purpose.\n\n2. User Content\n\n2.1. The App may allow you to submit, upload, or display content, including but not limited to text, images, audio, and video (\"User Content\").\n\n2.2. By submitting User Content, you grant Oldies Mate a worldwide, non-exclusive, royalty-free, sublicensable, and transferable license to use, reproduce, distribute, prepare derivative works of, display, and perform the User Content in connection with the App and Oldies Mate\'s business, including for promoting and redistributing part or all of the App.\n\n2.3. You are solely responsible for your User Content and the consequences of submitting or publishing it. By submitting User Content, you represent and warrant that you have the necessary rights and permissions to do so.\n\n3. Privacy\n\n3.1. Your privacy is important to us. Our Privacy Policy outlines how we collect, use, disclose, and safeguard your information when you use the App. By using the App, you consent to the collection and use of your information in accordance with our Privacy Policy.\n\n4. Intellectual Property\n\n4.1. The App and its original content (excluding User Content), features, and functionality are owned by Oldies Mate and are protected by international copyright, trademark, patent, trade secret, and other intellectual property or proprietary rights laws.\n\n4.2. You agree not to modify, adapt, reproduce, distribute, sell, license, or otherwise exploit any part of the App without the express written permission of Oldies Mate.\n\n5. Disclaimer of Warranties\n\n5.1. The App is provided on an \"as-is\" and \"as-available\" basis. Oldies Mate makes no representations or warranties of any kind, express or implied, regarding the use or operation of the App, including but not limited to the accuracy, completeness, reliability, or availability of the App.\n\n6. Limitation of Liability\n\n6.1. In no event shall Oldies Mate, its officers, directors, employees, or agents, be liable to you for any indirect, incidental, special, consequential, or punitive damages arising out of or in connection with your use of the App, whether based on warranty, contract, tort (including negligence), or any other legal theory, even if Oldies Mate has been advised of the possibility of such damages.\n\n7. Indemnification\n\n7.1. You agree to defend, indemnify, and hold harmless Oldies Mate and its officers, directors, employees, agents, and affiliates from and against any claims, liabilities, damages, losses, and expenses, including without limitation reasonable attorney\'s fees and costs, arising out of or in any way connected with your access to or use of the App, your User Content, or your violation of these terms and conditions.\n\n8. Changes to Terms\n\n8.1. Oldies Mate reserves the right to modify or replace these terms and conditions at any time. If a revision is material, we will provide at least 30 days\' notice prior to any new terms taking effect. What constitutes a material change will be determined at our sole discretion.\n\n9. Governing Law\n\n9.1. These terms and conditions shall be governed by and construed in accordance with the laws of Tunisia without regard to its conflict of law principles.\n\n10. Contact Us\n\n10.1. If you have any questions about these terms and conditions, please contact us at contact@oldiecare.com',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .labelLarge
                                                      .override(
                                                        fontFamily:
                                                            'Plus Jakarta Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ].divide(const SizedBox(height: 10.0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ]
                                  .divide(const SizedBox(height: 24.0))
                                  .addToStart(const SizedBox(height: 30.0)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
