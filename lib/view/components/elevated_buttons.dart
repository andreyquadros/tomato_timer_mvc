import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/pomodoro_controller.dart';
import '../../utils/pomodoro_colors.dart';

class ElevatedButtons extends StatelessWidget {
    ElevatedButtons({Key? key}) : super(key: key);

  final PomodoroController _controller = Get.put(PomodoroController());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: (){
            _controller.startWork();
            _controller.startTimer();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: PomodoroColors.backgroundColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
          ),
          child: const Text('Start Work',
            style: TextStyle(fontSize: 30, color: PomodoroColors.textDetails),),
        ),
        ElevatedButton(
          onPressed: (){
            _controller.startBreak();
            _controller.startTimer();
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: PomodoroColors.backgroundColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
          ),
          child: const Text('Start Break',
            style: TextStyle(fontSize: 30, color: PomodoroColors.textDetails),),
        ),
      ],
    );
  }
}
