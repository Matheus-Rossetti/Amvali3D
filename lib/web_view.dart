import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(r'http://20.201.114.134'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: OrientationBuilder(builder: (context, orientation) {
        // verifica orientação
        orientation == Orientation.portrait // se for landscape, desliga UI
            ? SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
                overlays: SystemUiOverlay.values)
            : SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
                overlays: []);
        return Expanded(child: WebViewWidget(controller: controller));
      }),
    );
  }
}
