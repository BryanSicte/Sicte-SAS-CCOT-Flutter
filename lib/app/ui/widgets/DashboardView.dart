import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'dart:io' show Platform;
import 'dart:ui' as ui;
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class DashboardView extends StatelessWidget {
  final String url;

  const DashboardView({super.key, required this.url});

  Future<void> _openInBrowser() async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception("No se pudo abrir el navegador");
    }
  }

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      return InAppWebView(initialUrlRequest: URLRequest(url: WebUri(url)));
    }

    if (Platform.isWindows) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _openInBrowser();
      });
      return const Scaffold(
        body: Center(
          child: Text(
            "Abriendo dashboard en el navegador…",
            style: TextStyle(fontSize: 18),
          ),
        ),
      );
    }

    return Scaffold(
      body: InAppWebView(initialUrlRequest: URLRequest(url: WebUri(url))),
    );
  }
}
