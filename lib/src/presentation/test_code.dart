// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_state_manager/src/simple/get_responsive.dart';
// import 'package:milk_delivery_app/src/config/constants.dart';
// import 'package:milk_delivery_app/src/presentation/sign_up_page.dart';

// class SignInController extends GetxController {
//   var pageIndex = 1.obs;

//   void updatePageIndex(int newPageIndex) {
//     pageIndex.value = newPageIndex;
//   }
// }

// final signInController = Get.put(SignInController());

// class SignInPage extends GetResponsiveView<SignInController> {
//   @override
//   Widget builder() {
//     return Scaffold(
//       backgroundColor: Colors.orange[100],
//       body: Padding(
//         padding: EdgeInsets.all(screen.width * 0.04),
//         child: SingleChildScrollView(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: <Widget>[
//               SizedBox(height: screen.height / 20),
//               Image.asset(
//                 Constants.logoImage,
//                 height: screen.height / 4,
//               ),
//               const SizedBox(height: 20.0),
//               Text(
//                 'Sign In',
//                 style: TextStyle(
//                     fontSize: screen.width * 0.05, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 20.0),
//               SignInPageContents(),
//               SizedBox(
//                 height: screen.height / 4,
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     GestureDetector(
//                       onTap: () {
//                         Get.to(() => SignUpPage());
//                       },
//                       child: Text(
//                         'Not yet signed up? Sign up.',
//                         style: TextStyle(fontSize: screen.width * 0.04),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class SignInPageContents extends GetResponsiveView<SignInController> {
//   @override
//   Widget builder() {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       children: [
//         Text('Please sign in',
//             style:
//                 TextStyle(fontSize: screen.width * 0.04)), // 4% of screen width
//         TextField(
//           // onChanged: (value) => controller.email.value = value,
//           onChanged: (value) => (),
//           decoration: const InputDecoration(labelText: 'Email address'),
//         ),
//         TextField(
//           // onChanged: (value) => controller.password.value = value,
//           onChanged: (value) => (),
//           decoration: const InputDecoration(labelText: 'Password'),
//         ),
//         ElevatedButton(
//           // onPressed: () => controller.handleSubmit(),
//           onPressed: () => (),
//           child: const Text('Submit', style: TextStyle(fontSize: 18.0)),
//         ),
//         const Text('or', style: TextStyle(fontSize: 12)),
//         ElevatedButton(
//           // onPressed: () => controller.handleGoogleSignUp(),
//           onPressed: () => (),
//           child: const Text('Sign In with Google',
//               style: TextStyle(fontSize: 18.0)),
//         ),
//       ],
//     );
//   }
// }
