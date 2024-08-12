# TRICO

TRICO is an innovative application designed to provide companionship through simulated conversations with family members using advanced Gemini AI technology. By replicating the voice and dialect of companions such as grandsons, daughters, and other family members, TRICO creates a lifelike virtual companion that offers comfort and meaningful interaction.

## Features

### User Management

- **Account Creation**: Sign up by selecting your role as either an *Oldie* or *Member*.
- **Authentication**: Easy login with Email/Password or Google Auth.
- **Profile**: Oldies can set up detailed profiles, including personal information, family details (e.g., husband, children), and significant life milestones.
- **Life Milestones**: Capture and store Oldie's best memories and significant events. This helps the AI mention these milestones during conversations to make interactions more personal and meaningful.
- **Medicine Reminder**: Configure reminders for Oldie's medication schedule.

### Link Management

- **Members Matching**: Oldies can share a QR Code with family members for easy matching. Members scan the QR Code to join the Oldie’s family network.

### Record Management

- **Record Opening**: Conversations with the Oldie will trigger an audio record to capture the member’s voice and dialect.
- **Record Data Saving**: Audio and text records are stored for further processing and personalization.

### Model Management

- **Model Fine-Tuning**: AI models (Personas) are refined using stored data to replicate the voice and mannerisms of family members.
- **Voice Synthesis**: Text2Speech AI technology generates synthetic speech that mirrors the family member’s voice based on stored vocal data.

### Conversation Management

- **Trigger**: Conversations can be initiated based on Oldie’s habits through web sockets.
- **Medicine Reminder**: Automated conversation reminders to ensure medication adherence.
- **Fake Call**: The Oldie’s phone will ring, and the AI clone will start a conversation once the call is answered.

## Getting Started

1. **Sign Up**: Create an account by choosing your role (Oldie or Member).
2. **Set Up Profile**: Oldies should complete their profiles with personal details, significant life milestones, and configure medicine reminders.
3. **Connect with Family**: Share your QR Code with family members to connect and add them to your network.
4. **Start Conversations**: Engage with your Oldie through simulated conversations powered by TRICO.

## Used Technologies

- **Flutter SDK**: For building cross-platform mobile applications with a single codebase.
- **Firebase Storage**: Provides backend services for storing user data, audio records, and other assets.
- **Gemini AI**: Core technology for simulating conversations and replicating voice and dialect.
- **Flutter Text to Speech Library**: Converts text into speech directly within the Flutter framework.
- **ElevenLabs**: Utilized for advanced voice cloning and text-to-speech capabilities.
- **QR Code Generation**: Enables easy family member matching and connection through QR Codes.

## Contributing

We welcome contributions to enhance TRICO! If you have ideas, improvements, or bug fixes, please submit a pull request or open an issue.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.

## Contact

For support or inquiries, please contact us at [support@tricoapp.com](mailto:support@tricoapp.com).

---

Thank you for choosing TRICO! We hope our technology helps bring joy and meaningful connection to you and your loved ones.