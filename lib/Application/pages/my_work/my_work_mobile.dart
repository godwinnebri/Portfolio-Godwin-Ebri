import 'package:flutter/material.dart';
import 'package:godwin_ebri_portfolio/core/routing/page_config.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class MyWorkMobile extends StatelessWidget {
  const MyWorkMobile({super.key});

  static const pageConfig = PageConfig(
    name: 'my_work_mobile',
    child: MyWorkMobile(),
  );

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    double width = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/mobilebg.png'), fit: BoxFit.cover),
      ),
      child: Center(
        child: GradientText(
          'Coming soooon 🚀',
          style: width < 1055
              ? themeData.textTheme.displayMedium
              : themeData.textTheme.displayLarge,
          gradientType: GradientType.linear,
          gradientDirection: GradientDirection.ltr,
          radius: .1,
          colors: [
            Colors.white.withOpacity(0.2),
            Colors.white,
          ],
        ),
      ),
    );
  }
}
