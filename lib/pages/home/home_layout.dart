import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:dar_arkam_app/constants/icons.dart';
import 'package:dar_arkam_app/pages/home/quran/quran.dart';
import 'package:dar_arkam_app/pages/home/ta3a/ta3a_content.dart';
import 'package:dar_arkam_app/pages/home/tasks/tasks_content.dart';
import 'package:dar_arkam_app/presentation/color_manger.dart';
import 'package:dar_arkam_app/presentation/style_manger.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'home/home_content.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({Key? key}) : super(key: key);

  @override
  _HomeLayoutState createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> bodyContent = [
      HomeScreen(),
      QuranContent(),
      Ta3aContent(),
      TaskContent()
    ];
    return SafeArea(
      child: Scaffold(
        body: bodyContent[currentIndex],
        bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: ColorManager.whiteColors,
          color: ColorManager.greyColor,
          index: currentIndex,
          items: <Widget>[
            _naviItem(title: "Home", iconPath: IconsPaths.homeIcon),
            _naviItem(title: "Quran", iconPath: IconsPaths.quranIcon),
            _naviItem(title: "Ta3a", iconPath: IconsPaths.ta3aIcon),
            _naviItem(title: "Tasks", iconPath: IconsPaths.tasksIcon),
          ],
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
        ),
      ),
    );
  }

  Widget _naviItem({required String title, required String iconPath}) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SvgPicture.asset(iconPath, color: ColorManager.darkColor),
        SizedBox(
          height: 4,
        ),
        Text(
          title,
          style: TextThemesModel.hintColorS14(),
        )
      ],
    );
  }
}
