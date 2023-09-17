import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tomato_timer_mvc/view/pomodoro_page.dart';

void main(){
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: PomodoroPage(
    ),
  ));
}