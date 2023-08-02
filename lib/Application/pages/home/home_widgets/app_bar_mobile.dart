import 'package:flutter/material.dart';

class AppBarMobile extends StatelessWidget implements PreferredSizeWidget {
  const AppBarMobile({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: SizedBox(
                height: 18,
                child: Image(image: AssetImage('assets/images/G.E.png'))),
          ),
          SizedBox(height: 20),
          Row(
            //crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'MY WORK    ',
                style: TextStyle(fontSize: 12),
              ),
              Text(
                'ABOUT ME    ',
                style: TextStyle(fontSize: 12),
              ),
              Text(
                'GET IN TOUCH    ',
                style: TextStyle(fontSize: 12),
              ),
            ],
          )
        ],
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 28);
}
