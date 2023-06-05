import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ToSiteButton extends StatelessWidget {
  const ToSiteButton({
    super.key,
    required Uri uri,
  }) : _uri = uri;

  final Uri _uri;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.orangeAccent,
      onPressed: () async {
        if (!await launchUrl(_uri)) {
          throw Exception('Could not launch $_uri');
        }
      },
      child: const Text('Толук окуу'),
    );
  }
}
