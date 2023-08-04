import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:godwin_ebri_portfolio/Application/pages/about_me/about_page.dart';
import 'package:godwin_ebri_portfolio/Application/pages/get_in_touch/get_in_touch.dart';
import 'package:godwin_ebri_portfolio/Application/pages/home/home_mobile.dart';
import 'package:godwin_ebri_portfolio/Application/pages/home/home_web.dart';
import 'package:godwin_ebri_portfolio/Application/pages/home/home_widgets/app_bar_mobile.dart';
import 'package:godwin_ebri_portfolio/Application/pages/home/home_widgets/app_bar_web.dart';
import 'package:godwin_ebri_portfolio/core/routing/page_config.dart';

class NavPage extends StatefulWidget {
  NavPage({
    super.key,
    //required String tab,
  }); //: index = tabs.indexWhere((element) => element.name == tab);

  static const tabsWeb = [
    HomeWeb.pageConfig,
    AboutPage.pageConfig,
    AboutPage.pageConfig,
    ContactPage.pageConfig,
  ];

  static const tabsMobile = [
    HomeMobile.pageConfig,
    AboutPage.pageConfig,
    AboutPage.pageConfig,
    ContactPage.pageConfig,
  ];

  static const pageConfig = PageConfig(
    name: 'nav',
  );

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int indexWeb = 0;
  int indexMobile = 0;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: AdaptiveLayout(
          body: SlotLayout(
            config: <Breakpoint, SlotLayoutConfig>{
              //* WEB
              Breakpoints.mediumAndUp: SlotLayout.from(
                key: const Key(
                  'home_web',
                ),
                builder: (_) => //HomePage.tabs[widget.index].child,
                    Scaffold(
                  appBar: AppBarWeb(
                    themeData: theme,
                    homeOnPressed: () {},
                    workOnPressed: () {},
                    aboutOnPressed: () {},
                    contactOnPressed: () {},
                  ),
                  body: NavPage.tabsWeb[indexWeb].child,
                ),
              ),

              //* MOBILE
              Breakpoints.small: SlotLayout.from(
                key: const Key(
                  'home_mobile',
                ),
                builder: (_) => Scaffold(
                  appBar: AppBarMobile(
                    themeData: theme,
                    homeOnPressed: () {
                      setState(() {
                        indexMobile = 0;
                      });
                      debugPrint(indexMobile.toString());
                    },
                    workOnPressed: () {
                      setState(() {
                        indexMobile = 1;
                      });
                      debugPrint(indexMobile.toString());
                    },
                    aboutOnPressed: () {
                      setState(() {
                        indexMobile = 2;
                      });
                      debugPrint(indexMobile.toString());
                    },
                    contactOnPressed: () {
                      setState(() {
                        indexMobile = 3;
                      });
                      debugPrint(indexMobile.toString());
                    },
                  ),
                  body: NavPage.tabsMobile[indexMobile].child,
                ),
              ),
            },
          ),
        ),
      ),
    );
  }
}

 // void _tapOnNavigationDestination(BuildContext context, int index) =>
  //     context.goNamed(
  //       NavPage.pageConfig.name,
  //       pathParameters: {
  //         'tab': HomePage.tabs[index].name,
  //       },
  //     );