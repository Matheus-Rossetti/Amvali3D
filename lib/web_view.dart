import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebView extends StatefulWidget {
  const WebView({super.key});
  @override
  State<WebView> createState() => _WebViewState();
}
class _WebViewState extends State<WebView> {
  late WebViewController controller;
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted); // add semicolon when testing local files
      // ..loadRequest(Uri.parse(r'https://speckle.guide/viewer/categorize-example.html')); // URL testing
    // controller.loadFlutterAsset('assets/www/working_proof/index.html'); // Local files testing
    controller.loadFlutterAsset('assets/www/speckle_viewer/index.html'); // Speckle viewer local files testing
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Web View'),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        // actions: ,
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}