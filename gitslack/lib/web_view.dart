import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  final WebViewController _controller = WebViewController()
    ..loadRequest(Uri.parse("https://github.com/Akashiutchiha"));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
