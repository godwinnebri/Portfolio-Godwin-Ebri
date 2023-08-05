import 'package:flutter/material.dart';
import 'package:godwin_ebri_portfolio/services/url_launcher.dart';

class IconLinks extends StatelessWidget {
  const IconLinks({
    super.key,
    required this.link,
    required this.icon,
  });
  final String link;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await launchURL(Uri.parse(link));
      },
      child: Image.asset(icon),
    );
  }
}
