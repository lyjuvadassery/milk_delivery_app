import 'dart:js';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:milk_delivery_app/src/config/constants.dart';
import 'package:milk_delivery_app/src/presentation/sign_up_page.dart';

class SignInController extends GetxController {
  var pageIndex = 1.obs;

  void updatePageIndex(int newPageIndex) {
    pageIndex.value = newPageIndex;
  }
}

final signInController = Get.put(SignInController());

class SignInPage extends GetResponsiveView<SignInController> {
  @override
  Widget builder() {
    double screenHeight = screen.height;
    double screenWidth = screen.width;

    if (screenWidth > screenHeight) {
      screenHeight = screenWidth;
      screenWidth = screenHeight;
    } else {
      screenHeight = screenHeight;
      screenWidth = screenWidth;
    }
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.orange[100],
        body: Padding(
          padding: EdgeInsets.all(screenWidth * 0.04),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: screenHeight * 2.5 / 6.44,
                  child: Column(
                    children: [
                      Image.asset(
                        Constants.logoImage,
                        height: screenHeight / 4,
                      ),
                      Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 3.2 / 6.44,
                  child: SignInPageContents(),
                ),
                SizedBox(
                  height: screenHeight * 0.5 / 6.44,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(() => SignUpPage());
                        },
                        child: Text(
                          'Not yet signed up? Sign up.',
                          style: TextStyle(fontSize: screenWidth * 0.04),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignInPageContents extends GetResponsiveView<SignInController> {
  @override
  Widget builder() {
    double screenHeight = screen.height;
    double screenWidth = screen.width;

    if (screenWidth > screenHeight) {
      screenHeight = screenWidth;
      screenWidth = screenHeight;
    } else {
      screenHeight = screenHeight;
      screenWidth = screenWidth;
    }
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Please sign in',
            style:
                TextStyle(fontSize: screenWidth * 0.04)), // 4% of screen width
        TextField(
          // onChanged: (value) => controller.email.value = value,
          onChanged: (value) => (),
          decoration: const InputDecoration(labelText: 'Email address'),
        ),
        TextField(
          // onChanged: (value) => controller.password.value = value,
          onChanged: (value) => (),
          decoration: const InputDecoration(labelText: 'Password'),
        ),
        ElevatedButton(
          // onPressed: () => controller.handleSubmit(),
          onPressed: () => (),
          child: const Text('Submit', style: TextStyle(fontSize: 18.0)),
        ),
        const Text('or', style: TextStyle(fontSize: 12)),
        ElevatedButton(
          // onPressed: () => controller.handleGoogleSignUp(),
          onPressed: () => (),
          child: const Text('Sign In with Google',
              style: TextStyle(fontSize: 18.0)),
        ),
      ],
    );
  }
}
