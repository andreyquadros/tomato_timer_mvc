import 'package:flutter/material.dart';
import 'package:tomato_timer_mvc/view/components/custom_appbar.dart';
import 'package:tomato_timer_mvc/view/components/elevated_buttons.dart';
import 'components/text_timer.dart';

class PomodoroPage extends StatelessWidget {
  const PomodoroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 50,),
            TextTimer(),
            const SizedBox(height: 30,),
            ElevatedButtons(),
          ],
        ),
      ),
    );
  }
}
