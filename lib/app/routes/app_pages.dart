// 2️⃣ Define Pages with Bindings

import 'package:calliverse/app/Screens/EmailSignUpScreen/emailsignup_binding.dart';
import 'package:calliverse/app/Screens/EmailSignUpScreen/emailsignup_view.dart';
import 'package:calliverse/app/Screens/EmailVerification/emailverify_binding.dart';
import 'package:calliverse/app/Screens/EmailVerification/emailverify_view.dart';
import 'package:calliverse/app/Screens/HomeScreen/home_binding.dart';
import 'package:calliverse/app/Screens/HomeScreen/home_view.dart';
import 'package:calliverse/app/Screens/LoginScreen/login_binding.dart';
import 'package:calliverse/app/Screens/LoginScreen/login_view.dart';
import 'package:calliverse/app/Screens/OnBording/onboarding_binding.dart';
import 'package:calliverse/app/Screens/OnBording/onboarding_vew.dart';
import 'package:calliverse/app/Screens/SplaceScreen/splacescreen_binding.dart';
import 'package:calliverse/app/Screens/SplaceScreen/splacescreen_view.dart';
import 'package:get/get.dart';
// import '../modules/home/home_view.dart';
// import '../modules/home/home_binding.dart';
// import '../modules/login/login_view.dart';
// import '../modules/login/login_binding.dart';
import 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.SPLACESCREEN,
      page: () => SplacescreenView(),
      binding: SplacescreenBinding(),
    ),
    GetPage(
      name: Routes.ONBOARDING,
      page: () => OnboardingVew(),
      binding: OnboardingBinding(),
    ),
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.EMAILSIGNUP,
      page: () => EmailsignupView(),
      binding: EmailsignupBinding(),
    ),
    GetPage(
      name: Routes.EMAILVERIFY,
      page: () => EmailverifyView(),
      binding: EmailverifyBinding(),
    ),

    GetPage(name: Routes.HOME, page: () => HomeView(), binding: HomeBinding()),
  ];
}
