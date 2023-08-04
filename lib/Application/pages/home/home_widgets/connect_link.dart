import 'package:flutter/material.dart';

class ConnectLinks extends StatelessWidget {
  const ConnectLinks({
    super.key,
    required this.themeData,
    required this.linkTitle,
    required this.linkText,
    this.link,
  });

  final ThemeData themeData;
  final String linkTitle;
  final String linkText;
  final String? link;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          linkTitle,
          style: themeData.textTheme.titleLarge?.copyWith(
            color: const Color(
              0xff616166,
            ),
          ),
        ),
        Text(
          linkText,
          style: themeData.textTheme.displaySmall,
        ),
      ],
    );
  }
}
