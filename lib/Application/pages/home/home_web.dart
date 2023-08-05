import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:godwin_ebri_portfolio/Application/pages/home/home_widgets/connect_link.dart';
import 'package:godwin_ebri_portfolio/Application/pages/home/home_widgets/icon_links.dart';
import 'package:godwin_ebri_portfolio/core/routing/page_config.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({super.key});

  static const pageConfig = PageConfig(
    name: 'home_web',
    child: HomeWeb(),
  );

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    double width = MediaQuery.of(context).size.width;

    return Container(
      //height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/webbg.png'), fit: BoxFit.cover),
      ),

      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //* HERO
            Padding(
              padding: const EdgeInsets.only(left: 160, right: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi,',
                            style: width < 1055
                                ? themeData.textTheme.displayMedium?.copyWith(
                                    color: const Color(0xff616166),
                                  )
                                : themeData.textTheme.displayLarge?.copyWith(
                                    color: const Color(0xff616166),
                                  ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GradientText(
                                'I\'m Godwin',
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
                              const Gap(8),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: width < 1055
                                    ? null
                                    : SizedBox(
                                        width: 84,
                                        child: Text(
                                          'Mobile Dev && Designer',
                                          style: themeData.textTheme.titleLarge
                                              ?.copyWith(
                                            color: const Color(
                                              0xff616166,
                                            ),
                                          ),
                                        ),
                                      ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Gap(18),
                      SizedBox(
                        width: width < 1055 ? 250 : 500,
                        child: Flexible(
                          child: Text(
                            'Integer sollicitudin venenatis vehicula. Mauris quis orci risus. Donec eu dolor viverra, efficitur orci feugiat, mollis libero. Maecenas purus mauris, lobortis in leo sed, ultricies ultrices tellus.',
                            style: themeData.textTheme.titleLarge?.copyWith(
                              color: const Color(0xffBDBDBF),
                              height: 2,
                            ),
                          ),
                        ),
                      ),
                      const Gap(40),
                      const SizedBox(
                        height: 22,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            IconLinks(
                              link: 'https://github.com/godwinnebri',
                              icon: 'assets/images/github.png',
                            ),
                            Gap(24),
                            IconLinks(
                              link: 'https://dribbble.com/godwinebri',
                              icon: 'assets/images/dribbble.png',
                            ),
                            Gap(24),
                            IconLinks(
                              link: 'https://www.instagram.com/godwinnebri',
                              icon: 'assets/images/instagram.png',
                            ),
                            Gap(24),
                            IconLinks(
                              link: 'https://x.com/gxdwinn',
                              icon: 'assets/images/x.png',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  // const Expanded(
                  //   child: SizedBox(),
                  // ),

                  //* Hero image
                  Expanded(
                    child: SizedBox(
                      height: 700,
                      child: Image.asset(
                        'assets/images/heroweb.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Gap(78),

            //* technologies
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: width < 1055 ? 400 : 600,
                    child: GradientText(
                      'Crafting Digital Experiences && Mobile Magic ✨',
                      style: width < 1055
                          ? themeData.textTheme.displayMedium
                          : themeData.textTheme.displayLarge,
                      gradientType: GradientType.linear,
                      gradientDirection: GradientDirection.ltr,
                      radius: .4,
                      colors: [
                        Colors.white.withOpacity(0.2),
                        Colors.white,
                      ],
                    ),
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

            const Gap(8),
            //*technologies image
            SizedBox(
              width: 530,
              child: Image.asset(
                'assets/images/technologies.png',
              ),
            ),

            const Gap(100),

            //* LET'S CONNECT
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 120,
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
                        Colors.white.withOpacity(0.5),
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
