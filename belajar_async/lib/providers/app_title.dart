import 'package:flutter/material.dart';


class ApplicationTitle with ChangeNotifier {
  bool _isWelcome = true;
  bool get isWelcome => _isWelcome;

  set isWelcome(bool value){
    isWelcomeAsync(value).then((value) {
      _isWelcome = value;
      notifyListeners();
    },);
  }

  String get title => (_isWelcome) ? "Selamat datang di politeknik sampit!": "Terimakasih Atas Kunjungan Anda!";

  Future<bool> isWelcomeAsync(bool value) async {
    await Future.delayed(const Duration(seconds: 3));
    return value;
  }

}