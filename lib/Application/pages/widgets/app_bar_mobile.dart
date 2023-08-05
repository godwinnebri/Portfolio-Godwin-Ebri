import 'package:flutter/material.dart';

class AppBarMobile extends StatelessWidget implements PreferredSizeWidget {
  const AppBarMobile({
    required this.themeData,
    super.key,
    required this.homeOnPressed,
    required this.workOnPressed,
    required this.aboutOnPressed,
    required this.contactOnPressed,
    required this.index,
  });

  final ThemeData themeData;
  final VoidCallback homeOnPressed;
  final VoidCallback workOnPressed;
  final VoidCallback aboutOnPressed;
  final VoidCallback contactOnPressed;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 23),
            child: SizedBox(
              height: 18,
              child: GestureDetector(
                onTap: homeOnPressed,
                child: const Image(
                  image: AssetImage('assets/images/G.E.png'),
                ),
              ),
            ),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.only(left: 18.0),
            child: Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: workOnPressed,
                  child: SizedBox(
                    width: 77,
                    height: 32,
                    child: Text(
                      'MY WORK',
                      style: themeData.textTheme.titleMedium?.copyWith(
                        color: index == 1
                            ? Colors.white
                            : const Color(
                                0xff98989C,
                              ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: aboutOnPressed,
                  child: SizedBox(
                    width: 77,
                    height: 32,
                    child: Text(
                      'ABOUT ME',
                      style: themeData.textTheme.titleMedium?.copyWith(
                        color: index == 2
                            ? Colors.white
                            : const Color(
                                0xff98989C,
                              ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: contactOnPressed,
                  child: SizedBox(
                    height: 32,
                    child: Text(
                      'GET IN TOUCH',
                      style: themeData.textTheme.titleMedium?.copyWith(
                        color: index == 3
                            ? Colors.white
                            : const Color(
                                0xff98989C,
                              ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      flexibleSpace: const Image(
        image: AssetImage('assets/images/appbarbgmobile.png'),
        fit: BoxFit.cover,
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 28);
}
