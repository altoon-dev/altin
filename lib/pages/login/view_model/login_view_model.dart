import 'package:altyn_login/pages/login/repository/login_repository.dart';
import 'package:altyn_login/pages/login/repository/login_repository_interface.dart';
import 'package:flutter/material.dart';

enum ViewState { initial, loading, nominal, error }

class ViewModel extends ChangeNotifier {
  ViewModel() : _repository = LoginRepository();

  final LoginRepositoryInterface _repository;

  Future<bool> login(String phoneNumber, String password) async {
    final result = await _repository.login(phoneNumber, password);
    if (result.isRight) {
      print('Success: ${result.right}');
      notifyListeners();
      return true;
    } else {
      print(result.left);
      notifyListeners();
      return false;
    }
  }
}