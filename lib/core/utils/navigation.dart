import 'package:my_web_app/views/dashboard/binding/dashboard_binding.dart';
import 'package:my_web_app/views/auth/login/binding/login_binding.dart';
import 'package:my_web_app/views/dashboard/view/dashboard_view.dart';
import 'package:my_web_app/views/auth/login/view/login_view.dart';
import 'package:my_web_app/core/enums/index.dart';
import 'package:get/get.dart';

class AppNavigation {
  static final List<GetPage> routes = [
    GetPage(
      name: NavigationEnums.login.toPath,
      page: () => const LoginView(),
      binding: LoginBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    ),
    GetPage(
      name: NavigationEnums.dashboard.toPath,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    ),
  ];
}
