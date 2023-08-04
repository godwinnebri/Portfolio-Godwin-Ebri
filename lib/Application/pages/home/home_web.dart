import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:godwin_ebri_portfolio/Application/pages/home/home_widgets/connect_link.dart';
import 'package:godwin_ebri_portfolio/core/routing/page_config.dart';

class HomeWeb extends StatelessWidget {
  const HomeWeb({super.key});

  static const pageConfig = PageConfig(
    name: 'home_web',
    child: HomeWeb(),
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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 140),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // const Gap(40),

              //* HERO
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Flexible(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Hi,',
                                    style: themeData.textTheme.displayLarge,
                                  ),
                                  Text(
                                    'I\'m Godwin',
                                    style: themeData.textTheme.displayLarge,
                                  ),
                                ],
                              ),
                            ),
                            const Gap(8),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 12),
                              child: SizedBox(
                                width: 84,
                                child: Text(
                                  'Mobile Dev && Designer',
                                  style:
                                      themeData.textTheme.titleLarge?.copyWith(
                                    color: const Color(
                                      0xff616166,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Gap(14),
                        SizedBox(
                          width: 480,
                          child: Text(
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
                      ],
                    ),
                  ),
                  // const Expanded(
                  //   child: SizedBox(),
                  // ),

                  Expanded(
                    child: Image.asset(
                      'assets/images/heroweb.png',
                    ),
                  ),

                  //*hero image
                  // Expanded(
                  //   child: Container(
                  //     //clipBehavior: Clip.none,
                  //     height: 450,
                  //     width: 500,
                  //     decoration: const BoxDecoration(
                  //       image: DecorationImage(
                  //           image: AssetImage(
                  //             'assets/images/heromobile.png',
                  //           ),
                  //           fit: BoxFit.cover),
                  //     ),
                  //   ),
                  // ),
                ],
              ),

              const Gap(78),

              //* technologies
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 60),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Crafting Digital Experiences && Mobile Magic ✨',
                      style: themeData.textTheme.displayMedium,
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
                      child: Text(
                        'Let\'s Connect',
                        style: themeData.textTheme.displayMedium,
                      ),
                    ),
                    const Gap(26),
                    Divider(
                      color: Colors.white.withOpacity(0.2),
                    ),
                    const Gap(26),
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
      ),
    );
  }
}
