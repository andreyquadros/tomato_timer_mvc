import 'package:flutter/material.dart';
import '../../utils/pomodoro_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        toolbarHeight: 100,
        centerTitle: true,
        backgroundColor: PomodoroColors.backgroundColor,
        title: const Text(
        'Pomodoro Timer',
        style: TextStyle(
            color: PomodoroColors.appBarColor,
            height: 50,
            fontSize: 30,
            fontWeight: FontWeight.bold),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 2);
}
