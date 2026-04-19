import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

class ProfileaccountController extends GetxController {
  final imagePicker = ImagePicker();
  Rx<File?> profileImage = Rx<File?>(null);

  /// Request gallery permission and pick image
  Future<void> pickImageFromGallery() async {
    try {
      // Request permission based on platform
      PermissionStatus status;
      if (GetPlatform.isAndroid) {
        status = await Permission.photos.request();
      } else if (GetPlatform.isIOS) {
        status = await Permission.photos.request();
      } else {
        status = PermissionStatus.granted;
      }

      if (status.isDenied) {
        Get.snackbar(
          'Permission Denied',
          'Please enable photo access in settings',
          snackPosition: SnackPosition.BOTTOM,
        );
        return;
      }

      if (status.isPermanentlyDenied) {
        Get.snackbar(
          'Permission Required',
          'Please enable photo access in app settings',
          snackPosition: SnackPosition.BOTTOM,
          mainButton: TextButton(
            onPressed: openAppSettings,
            child: const Text('Open Settings'),
          ),
        );
        return;
      }

      // Pick image from gallery
      final XFile? pickedFile = await imagePicker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 80,
      );

      if (pickedFile != null) {
        profileImage.value = File(pickedFile.path);
      }
    } catch (e) {
      Get.snackbar(
        'Error',
        'Failed to pick image: $e',
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
