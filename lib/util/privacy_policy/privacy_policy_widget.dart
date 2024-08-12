import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'privacy_policy_model.dart';
export 'privacy_policy_model.dart';

class PrivacyPolicyWidget extends StatefulWidget {
  const PrivacyPolicyWidget({super.key});

  @override
  State<PrivacyPolicyWidget> createState() => _PrivacyPolicyWidgetState();
}

class _PrivacyPolicyWidgetState extends State<PrivacyPolicyWidget> {
  late PrivacyPolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacyPolicyModel());
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
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
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
                                    mainAxisAlignment: MainAxisAlignment.start,
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
                                          'Privacy Policy',
                                          style: FlutterFlowTheme.of(context)
                                              .labelLarge
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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
                                            'Effective Date: 7/20/2024\n\nWelcome to TRICO! This privacy policy outlines how TRICO (\"we\", \"our\", \"us\") collects, uses, discloses, and protects information obtained from users (\"you\", \"your\") of the TRICO mobile application (\"App\").\n\n1. Information We Collect\n\n1.1. Personal Information:\n\nWhen you register and use the App, we may collect personal information such as your name, email address, phone number, and profile information you choose to provide.\nIf you choose to connect your account with third-party services (e.g., Google), we may also collect information from those services in accordance with their privacy policies.\n1.2. Usage and Device Information:\n\nWe may collect information about your interactions with the App, including log data, device information (such as device type, operating system), IP address, and usage patterns.\n1.3. Location Information:\n\nWith your consent, we may collect precise location data when you use certain features of the App that require location-based services.\n\n2. Use of Information\n\n2.1. We may use the information we collect for the following purposes:\n\nTo provide and maintain the App\'s functionality and services.\n\nTo personalize your experience and deliver content and features tailored to your interests.\n\nTo communicate with you, including responding to your inquiries and providing customer support.\n\nTo send you promotional and marketing communications with your consent.\n\nTo improve our services, understand usage trends, and optimize the App\'s performance.\n\n3. Sharing of Information\n\n3.1. We do not sell, trade, or otherwise transfer your personal information to third parties without your consent, except as described in this Privacy Policy or as required by law.\n\n3.2. We may share your information with third-party service providers who assist us in operating the App, conducting our business, or servicing you, subject to appropriate confidentiality and security measures.\n\n3.3. We may disclose your information if we believe disclosure is necessary to comply with legal obligations, enforce our policies, protect our rights or the rights of others, or detect, prevent, or address fraud or security issues.\n\n4. Data Security\n\n4.1. We implement reasonable security measures to protect your information from unauthorized access, alteration, disclosure, or destruction. However, no method of transmission over the internet or electronic storage is completely secure, and we cannot guarantee absolute security.\n\n5. Your Choices and Rights\n\n5.1. Access and Correction: You may access and update your account information through the App\'s settings.\n\n5.2. Location Information: You can enable or disable location services through your device settings or the App\'s settings.\n\n5.3. Marketing Communications: You may opt-out of receiving promotional emails or messages from us by following the unsubscribe instructions provided in the communication.\n\n6. Children\'s Privacy\n\n6.1. The App is not intended for use by children under the age of 13. We do not knowingly collect personal information from children under 13. If we learn that we have collected personal information from a child under 13, we will promptly delete that information.\n\n7. Changes to This Privacy Policy\n\n7.1. We may update this Privacy Policy from time to time to reflect changes in our practices or legal requirements. We will notify you of any material changes by posting the updated Privacy Policy on our website or within the App.\n\n8. Contact Us\n\n8.1. If you have any questions about this Privacy Policy or our privacy practices, please contact us at contact@trico.com',
                                            style: FlutterFlowTheme.of(context)
                                                .labelLarge
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  color: FlutterFlowTheme.of(
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
                            ].addToStart(const SizedBox(height: 20.0)),
                          ),
                        ],
                      ),
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
