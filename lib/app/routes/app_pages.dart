// 2️⃣ Define Pages with Bindings

import 'package:calliverse/app/Screens/Auth/EmailSignUpScreen/emailsignup_binding.dart';
import 'package:calliverse/app/Screens/Auth/EmailSignUpScreen/emailsignup_view.dart';
import 'package:calliverse/app/Screens/Auth/EmailVerification/emailverify_binding.dart';
import 'package:calliverse/app/Screens/Auth/EmailVerification/emailverify_view.dart';
import 'package:calliverse/app/Screens/Home/BottomNaviBar_binding.dart';
import 'package:calliverse/app/Screens/Home/BottomNaviBar_view.dart';
import 'package:calliverse/app/Screens/Auth/LoginScreen/login_binding.dart';
import 'package:calliverse/app/Screens/Auth/LoginScreen/login_view.dart';
import 'package:calliverse/app/Screens/OnBording/onboarding_binding.dart';
import 'package:calliverse/app/Screens/OnBording/onboarding_vew.dart';
import 'package:calliverse/app/Screens/Auth/PhoneSignUpScreen/phonesignup_binding.dart';
import 'package:calliverse/app/Screens/Auth/PhoneSignUpScreen/phonesignup_view.dart';
import 'package:calliverse/app/Screens/Auth/PhoneVerifyScreen/phoneverify_binding.dart';
import 'package:calliverse/app/Screens/Auth/PhoneVerifyScreen/phoneverify_view.dart';
import 'package:calliverse/app/Screens/ProfileAccount/profile%20account_binding.dart';
import 'package:calliverse/app/Screens/ProfileAccount/profileaccount_view.dart';
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
    GetPage(
      name: Routes.PROFILEACCOUNT,
      page: () => ProfileaccountView(),
      binding: ProfileaccountBinding(),
    ),
    GetPage(
      name: Routes.PHONESIGNUP,
      page: () => PhonesignupView(),
      binding: PhonesignupBinding(),
    ),
    GetPage(
      name: Routes.PHONEVERIFY,
      page: () => PhoneverifyView(),
      binding: PhoneverifyBinding(),
    ),

    GetPage(
      name: Routes.BOTTOMNAVIBAR,
      page: () => BottomNaviBarView(),
      binding: BottomnavibarBinding(),
    ),
  ];
}
