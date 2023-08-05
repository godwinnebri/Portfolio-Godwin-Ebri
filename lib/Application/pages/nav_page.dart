import 'package:flutter/material.dart';
import 'package:flutter_adaptive_scaffold/flutter_adaptive_scaffold.dart';
import 'package:godwin_ebri_portfolio/Application/pages/about_me/about_web.dart';
import 'package:godwin_ebri_portfolio/Application/pages/contact/get_in_touch_web.dart';
import 'package:godwin_ebri_portfolio/Application/pages/home/home_mobile.dart';
import 'package:godwin_ebri_portfolio/Application/pages/home/home_web.dart';
import 'package:godwin_ebri_portfolio/Application/pages/my_work/my_work_mobile.dart';
import 'package:godwin_ebri_portfolio/Application/pages/my_work/my_work_web.dart';
import 'package:godwin_ebri_portfolio/Application/pages/widgets/app_bar_mobile.dart';
import 'package:godwin_ebri_portfolio/Application/pages/widgets/app_bar_web.dart';
import 'package:godwin_ebri_portfolio/core/routing/page_config.dart';

class NavPage extends StatefulWidget {
  NavPage({
    super.key,
    //required String tab,
  }); //: index = tabs.indexWhere((element) => element.name == tab);

  static const tabsWeb = [
    HomeWeb.pageConfig,
    MyWorkWeb.pageConfig,
    AboutWeb.pageConfig,
    ContactWeb.pageConfig,
  ];

  static const tabsMobile = [
    HomeMobile.pageConfig,
    MyWorkMobile.pageConfig,
    AboutWeb.pageConfig,
    ContactWeb.pageConfig,
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
                    index: indexWeb,
                    themeData: theme,
                    homeOnPressed: () {
                      setState(() {
                        indexWeb = 0;
                        indexMobile = 0;
                      });
                      debugPrint(indexWeb.toString());
                    },
                    workOnPressed: () {
                      setState(() {
                        indexWeb = 1;
                        indexMobile = 1;
                      });
                      debugPrint(indexWeb.toString());
                    },
                    aboutOnPressed: () {
                      setState(() {
                        indexWeb = 2;
                        indexMobile = 2;
                      });
                      debugPrint(indexWeb.toString());
                    },
                    contactOnPressed: () {
                      setState(() {
                        indexWeb = 3;
                        indexMobile = 3;
                      });
                      debugPrint(indexWeb.toString());
                    },
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
                    index: indexMobile,
                    themeData: theme,
                    homeOnPressed: () {
                      setState(() {
                        indexMobile = 0;
                        indexWeb = 0;
                      });
                      debugPrint(indexMobile.toString());
                    },
                    workOnPressed: () {
                      setState(() {
                        indexMobile = 1;
                        indexWeb = 1;
                      });
                      debugPrint(indexMobile.toString());
                    },
                    aboutOnPressed: () {
                      setState(() {
                        indexMobile = 2;
                        indexWeb = 2;
                      });
                      debugPrint(indexMobile.toString());
                    },
                    contactOnPressed: () {
                      setState(() {
                        indexMobile = 3;
                        indexWeb = 3;
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