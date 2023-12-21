// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_state_manager/src/simple/get_responsive.dart';
// import 'package:milk_delivery_app/src/config/constants.dart';

// class SignUpController extends GetxController {
//   var pageIndex = 1.obs;

//   void updatePageIndex(int newPageIndex) {
//     pageIndex.value = newPageIndex;
//   }
// }

// final signUpController = Get.put(SignUpController());

// class SignUpPage extends GetResponsiveView<SignUpController> {
//   @override
//   Widget builder() {
//     return Scaffold(
//       backgroundColor: Colors.orange[100],
//       body: Padding(
//         padding: EdgeInsets.all(screen.width * 0.04),
//         child: SingleChildScrollView(
//           child: ConstrainedBox(
//             constraints: BoxConstraints(
//               minHeight: screen.height,
//             ),
//             child: IntrinsicHeight(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   SizedBox(height: screen.height / 20),
//                   Image.asset(
//                     Constants.logoImage,
//                     height: screen.height / 3,
//                   ),
//                   const SizedBox(height: 20.0),
//                   Text(
//                     'Sign Up',
//                     style: TextStyle(
//                         fontSize: screen.width * 0.05,
//                         fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 20.0),
//                   Expanded(
//                     child: Obx(() => signUpController.pageIndex.value == 1
//                         ? SignUpPage1()
//                         : signUpController.pageIndex.value == 2
//                             ? SignUpPage2()
//                             : SignUpPage3()),
//                   ),
//                   SizedBox(height: screen.height / 8), // 12.5% of screen height
//                   Text('Already signed up? Sign in.',
//                       style: TextStyle(fontSize: screen.width * 0.04)),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SignUpPage1 extends GetResponsiveView<SignUpController> {
//   @override
//   Widget builder() {
//     return SingleChildScrollView(
//       child: ConstrainedBox(
//         constraints: BoxConstraints(
//           minHeight: screen.height,
//         ),
//         child: IntrinsicHeight(
//           child: Column(
//             children: [
//               Text('Please enter the PIN code of your address',
//                   style: TextStyle(
//                       fontSize: screen.width * 0.04)), // 4% of screen width
//               const SizedBox(height: 20.0),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: List<Widget>.generate(
//                   6,
//                   (index) => Container(
//                     width: screen.width * 0.12, // 12% of screen width
//                     child: TextField(
//                       keyboardType: TextInputType.number,
//                       maxLength: 1,
//                       textAlign: TextAlign.center,
//                       decoration: const InputDecoration(
//                         counterText: '',
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 20.0),
//               ElevatedButton(
//                 onPressed: () => controller.updatePageIndex(2),
//                 child: const Text(
//                   'Next >',
//                   style: TextStyle(fontSize: 18.0),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SignUpPage2 extends GetResponsiveView<SignUpController> {
//   @override
//   Widget builder() {
//     return SingleChildScrollView(
//       child: ConstrainedBox(
//         constraints: BoxConstraints(
//           minHeight: screen.height,
//         ),
//         child: IntrinsicHeight(
//           child: Column(
//             children: [
//               Text(
//                   'We deliver milk at that PIN code! Please enter your address',
//                   style: TextStyle(
//                       fontSize: screen.width * 0.04)), // 4% of screen width
//               const SizedBox(height: 20.0),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Flat Number, Building Name',
//                 ),
//               ),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Address Line 1',
//                 ),
//               ),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: 'Address Line 2',
//                 ),
//               ),
//               const SizedBox(height: 20.0),
//               Text('Mumbai 400 056',
//                   style: TextStyle(
//                       fontSize: screen.width * 0.04)), // 4% of screen width
//               const SizedBox(height: 20.0),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   ElevatedButton(
//                     onPressed: () => controller.updatePageIndex(1),
//                     child:
//                         const Text('< Back', style: TextStyle(fontSize: 18.0)),
//                   ),
//                   ElevatedButton(
//                     onPressed: () => controller.updatePageIndex(3),
//                     child:
//                         const Text('Next >', style: TextStyle(fontSize: 18.0)),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SignUpPage3 extends GetResponsiveView<SignUpController> {
//   @override
//   Widget builder() {
//     return SingleChildScrollView(
//       child: ConstrainedBox(
//         constraints: BoxConstraints(
//           minHeight: screen.height,
//         ),
//         child: IntrinsicHeight(
//           child: Column(
//             children: [
//               const SizedBox(height: 20.0),
//               Text('Last step! Please select a sign-up method.',
//                   style: TextStyle(
//                       fontSize: screen.width * 0.04)), // 4% of screen width
//               const SizedBox(height: 20.0),
//               TextField(
//                 // onChanged: (value) => controller.email.value = value,
//                 onChanged: (value) => (),
//                 decoration: const InputDecoration(labelText: 'Email address'),
//               ),
//               TextField(
//                 // onChanged: (value) => controller.password.value = value,
//                 onChanged: (value) => (),
//                 decoration: const InputDecoration(labelText: 'Password'),
//               ),
//               const SizedBox(height: 20.0),
//               ElevatedButton(
//                 // onPressed: () => controller.handleSubmit(),
//                 onPressed: () => (),
//                 child: const Text('Submit', style: TextStyle(fontSize: 18.0)),
//               ),
//               const SizedBox(height: 20.0),
//               const Text('or', style: TextStyle(fontSize: 12)),
//               const SizedBox(height: 20.0),
//               ElevatedButton(
//                 // onPressed: () => controller.handleGoogleSignUp(),
//                 onPressed: () => (),
//                 child: const Text('Sign Up with Google',
//                     style: TextStyle(fontSize: 18.0)),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
