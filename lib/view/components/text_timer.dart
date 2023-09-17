import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/pomodoro_controller.dart';
import '../../utils/pomodoro_colors.dart';

class TextTimer extends StatelessWidget {
    TextTimer({Key? key}) : super(key: key);

  final PomodoroController _controller = Get.put(PomodoroController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => Text('${(_controller.remainingTime.value / 60).floor().toString().padLeft(2, '0')}'
        ':${(_controller.remainingTime.value % 60).toString().padLeft(2,'0')}',
      style: const TextStyle(fontSize: 100, color: PomodoroColors.textMain),
    ));
  }
}
