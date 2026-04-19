import 'package:calliverse/app/core/theme/app_colors.dart';
import 'package:calliverse/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build ( BuildContext context){
    return Scaffold(
      // backgroundColor: AppColors.primarydarken,
      appBar: AppBar(title: Text("Login Screen"),),
      body: 
      Center(child: Column(
        children: [
          Text("this is the login Screen"),
          ElevatedButton(onPressed: (){
            Get.offNamed(Routes.HOME);
          }, child: Text("Go to Home Screen"))
        ],
      ),),
    );
  }
}