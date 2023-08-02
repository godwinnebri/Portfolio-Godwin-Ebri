import 'package:flutter/material.dart';
import 'package:godwin_ebri_portfolio/core/page_config.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  static const pageConfig = PageConfig(
    name: 'home_mobile',
  );

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text('Hi, I\'m Godwin'),
      ],
    );
  }
}
