import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:godwin_ebri_portfolio/Application/pages/home/home_widgets/connect_link.dart';
import 'package:godwin_ebri_portfolio/core/routing/page_config.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({super.key});

  static const pageConfig = PageConfig(
    name: 'home_mobile',
    child: HomeMobile(),
  );

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return Container(
      //height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/mobilebg.png'), fit: BoxFit.cover),
      ),

      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Gap(40),
            GradientText(
              'Hi, I\'m Godwin',
              style: themeData.textTheme.displayMedium,
              gradientType: GradientType.linear,
              gradientDirection: GradientDirection.ltr,
              radius: .6,
              colors: [
                Colors.white.withOpacity(0.3),
                Colors.white,
              ],
            ),
            const Gap(8),
            Text(
              'Mobile Dev && Designer',
              style: themeData.textTheme.titleLarge?.copyWith(
                color: const Color(
                  0xff616166,
                ),
              ),
            ),
            const Gap(14),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Text(
                textAlign: TextAlign.center,
                'Integer sollicitudin venenatis vehicula. Mauris quis orci risus. Donec eu dolor viverra, efficitur orci feugiat, mollis libero. Maecenas purus mauris, lobortis in leo sed, ultricies ultrices tellus.',
                style: themeData.textTheme.titleLarge?.copyWith(
                  color: const Color(0xffBDBDBF),
                  height: 1.8,
                ),
              ),
            ),

            const Gap(24),

            SizedBox(
              height: 22,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/github.png'),
                  const Gap(24),
                  Image.asset('assets/images/dribbble.png'),
                  const Gap(24),
                  Image.asset('assets/images/instagram.png'),
                ],
              ),
            ),

            const Gap(20),

            //*hero image
            Container(
              height: 450,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/heromobile.png',
                    ),
                    fit: BoxFit.cover),
              ),
            ),

            const Gap(78),

            //* technologies
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GradientText(
                    'Crafting Digital Experiences && Mobile Magic ✨',
                    style: themeData.textTheme.displayMedium,
                    gradientType: GradientType.linear,
                    gradientDirection: GradientDirection.ltr,
                    radius: 1,
                    colors: [
                      Colors.white.withOpacity(0.3),
                      Colors.white,
                      Colors.white,
                    ],
                  ),
                  const Gap(12),
                  SizedBox(
                    width: 70,
                    child: Text(
                      'With Flutter && Figma',
                      style: themeData.textTheme.titleLarge?.copyWith(
                        color: const Color(
                          0xff616166,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Gap(4),
            //*hero image
            SizedBox(
              width: 400,
              child: Image.asset(
                'assets/images/technologies.png',
              ),
            ),

            const Gap(100),

            //* LET'S CONNECT
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 160,
                    child: GradientText(
                      'Let\'s Connect',
                      style: themeData.textTheme.displayMedium,
                      gradientType: GradientType.linear,
                      gradientDirection: GradientDirection.ltr,
                      radius: 1,
                      colors: [
                        Colors.white.withOpacity(0.3),
                        Colors.white,
                      ],
                    ),
                  ),
                  const Gap(20),
                  Divider(
                    color: Colors.white.withOpacity(0.2),
                  ),
                  const Gap(20),
                  ConnectLinks(
                    themeData: themeData,
                    linkTitle: 'MAIL',
                    linkText: 'godwinnebri@gmail.com',
                  ),
                  const Gap(16),
                  ConnectLinks(
                    themeData: themeData,
                    linkTitle: 'TWITTER',
                    linkText: 'gxdwinn',
                  ),
                  const Gap(16),
                  ConnectLinks(
                    themeData: themeData,
                    linkTitle: 'WHATSAPP',
                    linkText: '+2349130733098',
                  ),
                  const Gap(40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
