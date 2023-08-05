import 'package:flutter/material.dart';

class AppBarWeb extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWeb({
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
      title: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 140,
          right: 140,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              height: 18,
              child: InkWell(
                onTap: homeOnPressed,
                child: const Image(
                  image: AssetImage('assets/images/G.E.png'),
                ),
              ),
            ),
            Row(
              //crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: workOnPressed,
                  child: SizedBox(
                    width: 77,
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
                InkWell(
                  onTap: aboutOnPressed,
                  child: SizedBox(
                    width: 77,
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
                InkWell(
                  onTap: contactOnPressed,
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
              ],
            )
          ],
        ),
      ),
      flexibleSpace: const Image(
        image: AssetImage('assets/images/appbarweb.png'),
        fit: BoxFit.cover,
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 28);
}
