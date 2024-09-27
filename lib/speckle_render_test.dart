import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() => runApp(const SpeckleRenderTest());

class SpeckleRenderTest extends StatefulWidget {
  const SpeckleRenderTest({super.key});

  @override
  State<SpeckleRenderTest> createState() => _SpeckleRenderTestState();
}

class _SpeckleRenderTestState extends State<SpeckleRenderTest> {
  late WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(
          r'https://specklebasicsetup-rgqc--5173--216f7361.local-credentialless.webcontainer.io/'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: WebViewWidget(controller: controller)),
    );
  }
}
