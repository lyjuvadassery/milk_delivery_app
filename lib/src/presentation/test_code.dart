import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  var pageIndex = 1.obs;

  void updatePageIndex(int newPageIndex) {
    pageIndex.value = newPageIndex;
  }
}

final signInController = Get.put(SignInController());

class TestPage extends GetResponsiveView<SignInController> {
  @override
  Widget builder() {
    double screenHeight = Get.mediaQuery.size.height -
        Get.mediaQuery.padding.top -
        Get.mediaQuery.padding.bottom;
    double screenWidth = Get.mediaQuery.size.width;

    if (screenWidth > screenHeight) {
      screenHeight = screenWidth;
      screenWidth = screenHeight;
    } else {
      screenHeight = screenHeight;
      screenWidth = screenWidth;
    }
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  height: screenHeight * 0.3,
                  color: Colors.amber,
                ),
                Container(
                  height: screenHeight * 0.53,
                  color: Colors.orange[600],
                ),
                Container(
                  height: screenHeight * 0.12,
                  color: Colors.red[800],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
