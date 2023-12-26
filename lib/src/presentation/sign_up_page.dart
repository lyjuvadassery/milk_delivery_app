import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:milk_delivery_app/src/config/constants.dart';
import 'package:milk_delivery_app/src/presentation/sign_in_page.dart';

class SignUpController extends GetxController {
  var pageIndex = 1.obs;

  void updatePageIndex(int newPageIndex) {
    pageIndex.value = newPageIndex;
  }
}

final signUpController = Get.put(SignUpController());

class SignUpPage extends GetResponsiveView<SignUpController> {
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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        Constants.logoImage,
                        height: screenHeight / 4,
                      ),
                      // const SizedBox(height: 20.0),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                            fontSize: screenWidth * 0.05,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenHeight * 3.2 / 6.44,
                  child: Obx(() => signUpController.pageIndex.value == 1
                      ? SignUpPage1()
                      : signUpController.pageIndex.value == 2
                          ? SignUpPage2()
                          : SignUpPage3()),
                ),
                SizedBox(
                  height: screenHeight * 0.5 / 6.44,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Expanded(child: SizedBox()),
                      GestureDetector(
                        onTap: () {
                          Get.to(() => SignInPage());
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Already signed up? Sign in.',
                            style: TextStyle(fontSize: screenWidth * 0.04),
                          ),
                        ),
                      ),
                      const Expanded(child: SizedBox()),
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

class SignUpPage1 extends GetResponsiveView<SignUpController> {
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
      mainAxisAlignment:
          MainAxisAlignment.spaceEvenly, // Evenly spaced elements
      children: [
        Text('Please enter the PIN code of your address',
            style:
                TextStyle(fontSize: screenWidth * 0.04)), // 4% of screen width
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List<Widget>.generate(
            6,
            (index) => SizedBox(
              width: screenWidth * 0.12, // 12% of screen width
              child: const TextField(
                keyboardType: TextInputType.number,
                maxLength: 1,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  counterText: '',
                ),
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () => controller.updatePageIndex(2),
          child: const Text(
            'Next >',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      ],
    );
  }
}

class SignUpPage2 extends GetResponsiveView<SignUpController> {
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
        Column(
          children: [
            Text(
              'We deliver milk at this PIN code!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenWidth * 0.04,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Please enter your address.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: screenWidth * 0.04,
              ),
            ),
          ],
        ),

        const SizedBox(height: 20.0),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Flat Number, Building Name',
          ),
        ),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Address Line 1',
          ),
        ),
        const TextField(
          decoration: InputDecoration(
            labelText: 'Address Line 2',
          ),
        ),
        const SizedBox(height: 20.0),
        Text(
          'Mumbai 400 056',
          style: TextStyle(fontSize: screenWidth * 0.04),
        ), // 4% of screen width
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ElevatedButton(
              onPressed: () => controller.updatePageIndex(1),
              child: const Text('< Back', style: TextStyle(fontSize: 18.0)),
            ),
            ElevatedButton(
              onPressed: () => controller.updatePageIndex(3),
              child: const Text('Next >', style: TextStyle(fontSize: 18.0)),
            ),
          ],
        ),
      ],
    );
  }
}

class SignUpPage3 extends GetResponsiveView<SignUpController> {
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
        // const SizedBox(height: 20.0),
        Text('Last step! Please select a sign-up method.',
            style:
                TextStyle(fontSize: screenWidth * 0.04)), // 4% of screen width
        // const SizedBox(height: 20.0),
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
        const SizedBox(height: 20.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () => controller.updatePageIndex(2),
              child: const Text('< Back', style: TextStyle(fontSize: 18.0)),
            ),
            ElevatedButton(
              // onPressed: () => controller.handleSubmit(),
              onPressed: () => (),
              child: const Text('Submit', style: TextStyle(fontSize: 18.0)),
            ),
          ],
        ),
        // const SizedBox(height: 20.0),
        const Text('or', style: TextStyle(fontSize: 12)),
        // const SizedBox(height: 20.0),
        ElevatedButton(
          // onPressed: () => controller.handleGoogleSignUp(),
          onPressed: () => (),
          child: const Text('Sign Up with Google',
              style: TextStyle(fontSize: 18.0)),
        ),
      ],
    );
  }
}
