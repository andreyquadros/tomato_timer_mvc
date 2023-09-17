import 'package:get/get.dart';
import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tomato_timer_mvc/model/pomodoro_timer.dart';

class PomodoroController extends GetxController {
  PomodoroTimer timer = PomodoroTimer();
  RxInt remainingTime = (25 * 60).obs;
  Timer? _timer;

  @override
  void onClose() {
    super.onClose();
    _timer?.cancel(); // Sempre cancele o timer ao descartar o controlador
  }

  void startTimer() {
    _timer?.cancel(); // Se já houver um timer em execução, cancelamos primeiro

    _timer = Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      if (remainingTime.value <= 0) {
        timer.cancel(); // Pare o timer quando o tempo restante chegar a 0
      } else {
        decreaseOneSecond();
      }
    });
  }

  void pauseTimer() {
    _timer?.cancel();
  }

  Future<void> saveTime() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('time', remainingTime.value);
  }

  Future<void> loadTime() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    remainingTime.value = prefs.getInt('time') ?? (25*60);
  }

  void startWork(){
    timer.startTime();
    remainingTime.value = timer.minutes * 60;
    saveTime();
  }

  void startBreak(){
    timer.startTimeBreak();
    remainingTime.value = timer.minutes * 60;
    saveTime();
  }

  void decreaseOneSecond() {
    if (remainingTime.value > 0){
      remainingTime.value -= 1;
      saveTime();
    }
  }

}