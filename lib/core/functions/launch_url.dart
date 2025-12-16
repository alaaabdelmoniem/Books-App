import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(context, String? uri) async {
  if (uri != null) {
    String rawUrl = uri;

    rawUrl = rawUrl.replaceFirst('http://', 'https://');

    final Uri url = Uri.parse(rawUrl);

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('cannot launch $uri')));
    }
  }
}
