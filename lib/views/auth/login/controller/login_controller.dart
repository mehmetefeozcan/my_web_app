import 'package:my_web_app/core/base/base_controller.dart';
import 'package:my_web_app/core/enums/index.dart';
import 'package:flutter/material.dart';

class LoginController extends BaseController {
  late TextEditingController nameCtr;
  late TextEditingController pwdCtr;

  @override
  void onInit() {
    nameCtr = TextEditingController();
    pwdCtr = TextEditingController();

    super.onInit();
  }

  void login() {
    goPage(NavigationEnums.dashboard.toPath);
  }
}
