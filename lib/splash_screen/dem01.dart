// // import 'package:flutter/material.dart';
// // import 'dart:async';
// // // import 'ws4.dart';

// // class Demo extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     final w = MediaQuery.of(context).size.width;
// //     final h = MediaQuery.of(context).size.height;

// //     return Scaffold(
// //         backgroundColor: Color(0x3C357C),
// //         body: SafeArea(
// //             child: Stack(
// //           alignment: Alignment.center,
// //           children: [
// //             const WelcomeBackground(),
// //             Positioned(
// //              top: 20,
// //              left: 210,
// //              child:Container(
// //               height: 50,
// //               child: Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   Container(
// //                     width: 20,
// //                     height: 20,
// //                     decoration: BoxDecoration(
// //                       shape: BoxShape.circle,
// //                       color: Colors.white,
// //                     ),
// //                   ),
// //                   SizedBox(width: 10),
// //                   Container(
// //                     width: 20,
// //                     height: 20,
// //                     decoration: BoxDecoration(
// //                       shape: BoxShape.circle,
// //                       color: Colors.white,
// //                     ),
// //                   ),
// //                   SizedBox(width: 10),
// //                   Container(
// //                     width: 20,
// //                     height: 20,
// //                     decoration: BoxDecoration(
// //                       shape: BoxShape.circle,
// //                       color: Colors.white,
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             ),
// //             Positioned(
// //               top: 50,
// //               left: -145,
// //               child: Image.asset(
// //                 'assets/images/welcome screen1/wsgrp3.png', 
// //                 width: 800, 
// //                 height: 600)
// //             ),
// //             SizedBox(height: 20),
// //           ],
// //         )
// //         )
// //         );
// //   }
// // }

// // class WelcomeBackground extends StatelessWidget {
// //   const WelcomeBackground({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final w = MediaQuery.of(context).size.width;
// //     final h = MediaQuery.of(context).size.height;
// //     return Stack(
// //       children: [
// //         Positioned(
// //           top: 600,
// //           // left: (w - 280) / 2
// //           left: -235,
// //           child: const CircleWidget(),
// //         ),
// //         Positioned(
// //           top:620,
// //           left: 210,
// //           child: Text(
// //             'Step 3',
// //                   style: TextStyle(
// //                     color: Colors.white,
// //                     fontSize: 24,
// //                     fontWeight: FontWeight.bold,
// //                   ),
// //           ),
// //         ),
// //         Positioned(
// //           top:720,
// //           left:85,
// //           child: RichText(
// //               textAlign: TextAlign.center,
// //               text: TextSpan(
// //                 style: DefaultTextStyle.of(context).style,
// //                 children: <TextSpan>[
// //                   TextSpan(
// //                     text: 'Loving & Supportive \n',
// //                     style: TextStyle(
// //                       fontSize: 35,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.white,
// //                       decoration: TextDecoration.none,
// //                     ),
                    
// //                   ),
// //                   TextSpan(
// //                     text: 'Community',
// //                     style: TextStyle(
// //                       fontSize: 35,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.purple, // Change the color as desired
// //                       decoration: TextDecoration.none,
// //                     ),
                    
// //                   ),
// //                 ],
// //               ),
// //             ),
// //         ),
// //         Positioned(
// //           top:880,
// //           left:176,
// //           child: ElevatedButton(
// //             onPressed: () {
// //               // Navigate to the next screen
// //               //  Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen4()));
              
// //             },
// //             child: Row(
// //               mainAxisSize: MainAxisSize.min,
// //               children: [
// //                 Text('Next Screen'),
// //                 Icon(Icons.arrow_forward),
                
// //               ],
// //             ),
// //           ),
// //         )
// //       ],
// //     );
// //   }
// // }

// // class CircleWidget extends StatelessWidget {
// //   const CircleWidget({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       width: 960,
// //       height: 960,
// //       decoration: const BoxDecoration(
// //         shape: BoxShape.circle,
// //         color: const Color(0xff251404),
                
              
// //           ),
// //       );
// //   }
// // }
// // import 'package:flutter/material.dart';

// // class MentalHealthAssessmentScreen extends StatefulWidget {
// //  @override
// //  _MentalHealthAssessmentScreenState createState() =>
// //  _MentalHealthAssessmentScreenState();
// // }

// // class _MentalHealthAssessmentScreenState
// //  extends State<MentalHealthAssessmentScreen> {
// //  int _currentPage = 1;
// //  String? _previousSelection;

// //  @override
// //  Widget build(BuildContext context) {
// //  return Scaffold(
// //  appBar: AppBar(
// //  title: Text('Mental Health Assessment'),
// //  ),
// //  body: Column(
// //  crossAxisAlignment: CrossAxisAlignment.stretch,
// //  children: [
// //  Padding(
// //  padding: const EdgeInsets.all(8.0),
// //  child: Text(
// //  '$_currentPage OF 14',
// //  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// //  ),
// //  ),
// //  Expanded(
// //  child: Container(
// //  padding: EdgeInsets.all(16.0),
// //  child: Column(
// //  crossAxisAlignment: CrossAxisAlignment.start,
// //  children: [
// //  Text('What\'s your health goal today?',
// //  style: TextStyle(color: Colors.white,
// //                     fontSize: 24,
// //                     fontWeight: FontWeight.bold,),),
// //  SizedBox(height: 16.0),
// //  Column(
// //  children: [
// //  _buildRadioButton(''){
// //   return RadioListTile(
// //     title: Text(
// //       text,
// //       style: TextStyle(
// //         fontSize: 16, // Set font size
// //         color: Colors.black, // Set text color
// //         fontWeight: FontWeight.normal, // Set font weight
// //         fontStyle: FontStyle.italic, // Set font style
// //         // Add more TextStyle properties as needed
// //       ),
// //     ),
// //     value: text,
// //     groupValue: _selectedOption,
// //     onChanged: (value) {
// //       setState(() {
// //         _selectedOption = value;
// //       });
// //     },
// //   );
// //  },
// //  _buildRadioButton('I wanna try Al Therapy'),
// //  _buildRadioButton('I want to cope with trauma'),
// //  _buildRadioButton('I want to be a better person'),
// //  _buildRadioButton('Just trying out the app, mate!'),
// //  ],
// //  ),
// //  ],
// //  ),
// //  ),
// //  ),
// //  ],
// //  ),
// //  bottomNavigationBar: _currentPage < 14
// //  ? Padding(
// //  padding: const EdgeInsets.all(8.0),
// //  child: ElevatedButton(
// //  onPressed: () {
// //  setState(() {
// //  _currentPage++;
// //  });
// //  },
// //  child: Text('Continue'),
// //  ),
// //  )
// //  : null,
// //  );
// //  }

// //  Widget _buildRadioButton(String label) {
// //  return Row(
// //  children: [
// //  Radio(
// //  value: label,
// //  groupValue: _currentPage == 1 ? null : _previousSelection,
// //  onChanged: (value) {
// //  setState(() {
// //  _currentPage == 1 ? _currentPage++ : null;
// //  _previousSelection = value as String?;
// //  });
// //  },
// //  ),
// //  Text(label),
// //  ],
// //  );
// //  }
// // }

// // import 'package:flutter/material.dart';
// // import 'dart:async';

// // class SignupPage extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       // appBar: AppBar(
        
// //       //   title: Text('Signup'),
// //       // ),
// //       body:Center( 
// //       // child:Column(
// //         // padding: EdgeInsets.all(12.0),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.start,
// //           children: [
// //              SplashBackground(),
// //             // Company Logo
// //             // Image.asset('assets/images/login-signup/logo.png', width: 100, height: 100),

// //             SizedBox(height: 16.0),

// //             // Sign Up Text
// //             Text(
// //               'Sign Up for Free',
// //               style: const TextStyle(
// //                 color: Colors.white,
// //                 fontSize: 24.0,
// //                 fontWeight: FontWeight.bold,
// //               ),
// //             ),

// //             SizedBox(height: 16.0),

// //             // Name Input
// //             Container(
// //             decoration: BoxDecoration(
// //                 color: Color.fromARGB(255, 202, 164, 164),
// //                 border: Border.all(
// //                   color: Colors.grey,
// //                   width: 2.0,
// //                 ),
// //                 borderRadius: BorderRadius.circular(10.0), 
// //               ),
// //             child:TextFormField(
// //               decoration: InputDecoration(
// //                 labelText: ' Name',
// //                 prefixIcon: Icon(Icons.person),
// //               ),
// //               validator: (value) {
// //                 if (value==null) {
// //                   return 'Please enter your name';
// //                 }
// //                 return null;
// //               },
// //             ),
// //             ),

// //             SizedBox(height: 16.0),

// //             // Email Input
            
// //             Container(
// //               decoration: BoxDecoration(
// //                 color: Color.fromARGB(255, 202, 164, 164),
// //                 border: Border.all(
// //                   color: Colors.grey,
// //                   width: 2.0,
// //                 ),
// //                 borderRadius: BorderRadius.circular(10.0), 
// //               ),
// //               child: TextFormField(
// //                 decoration: InputDecoration(
                  
// //                   labelText: ' Email Address',
// //                   border: InputBorder.none,
// //                   prefixIcon: Icon(Icons.email),
// //                 ),
// //                 validator: (value) {
// //                   if (value==null) {
// //                     return 'Please enter your email address';
// //                   }
// //                   if (!isValidEmail(value)) {
// //                     return 'Invalid email address';
// //                   }
// //                   return null;
// //                 },
// //               ),
// //             ),

// //             SizedBox(height: 16.0),

// //             // Password Input
// //             Container(
// //             decoration: BoxDecoration(
// //                 color: Color.fromARGB(255, 202, 164, 164),
// //                 border: Border.all(
// //                   color: Colors.grey,
// //                   width: 2.0,
// //                 ),
// //                 borderRadius: BorderRadius.circular(10.0), 
// //               ),
// //             child:TextFormField(
// //               decoration: InputDecoration(
// //                 labelText: ' Password',
// //                 prefixIcon: Icon(Icons.lock),
// //               ),
// //               obscureText: true,
// //               validator: (value) {
// //                 if (value==null) {
// //                   return 'Please enter a password';
// //                 }
// //                 return null;
// //               },
// //             ),
// //             ),

// //             SizedBox(height: 16.0),

// //             // Confirm Password Input
// //             Container(
// //             decoration: BoxDecoration(
// //                 color: Color.fromARGB(255, 202, 164, 164),
// //                 border: Border.all(
// //                   color: Colors.grey,
// //                   width: 2.0,
// //                 ),
// //                 borderRadius: BorderRadius.circular(10.0), 
// //               ),
// //             child:TextFormField(
// //               decoration: InputDecoration(
// //                 labelText: ' Confirm Password',
// //                 prefixIcon: Icon(Icons.lock),
                
// //               ),
// //               obscureText: true,
// //               validator: (value) {
// //                 if (value==null) {
// //                   return 'Please confirm your password';
// //                 }
// //                 return null;
// //               },
// //             ),
// //             ),

// //             SizedBox(height: 16.0),

// //             // Sign Up Button
// //             ElevatedButton(
// //               onPressed: () {
// //                 // Perform sign up logic here
// //               },
// //               child: Text('Sign Up'),
// //             ),

// //             SizedBox(height: 16.0),

// //             // Already have an account? Sign In
// //             // ElevatedButton(
// //             //   onPressed: () {
// //             //     // Navigate to the sign in page
// //             //   },
// //             //   child: Text('Already have an account? Sign In'),
// //             // ),
// //             TextButton(
// //               onPressed: () {
// //                 // Handle sign in button press
// //               },
// //                child:
// //               // Text('Already have an account?   Sign In'),
// //               RichText(
// //               textAlign: TextAlign.center,
// //               text: TextSpan(
// //                 style: DefaultTextStyle.of(context).style,
// //                 children: <TextSpan>[
// //                   const TextSpan(
// //                     text: 'Already have an account?',
// //                     style: TextStyle(
// //                       fontSize: 14,
// //                       fontWeight: FontWeight.bold,
// //                       color: Colors.white,
// //                       decoration: TextDecoration.none,
// //                     ),
// //                   ),
// //                   TextSpan(
// //                     text: ' Sign In',
// //                     style: TextStyle(
// //                       fontSize: 14,
// //                       fontWeight: FontWeight.bold,
// //                       color: Color.fromARGB(255, 206, 91, 4), // Change the color as desired
// //                       decoration: TextDecoration.none,
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             ),
// //           ],
// //         ),
// //       // ),
// //       ),
// //     );
// //   }

  
// //     // Add your email validation logic here
// // bool isValidEmail(String email) {
// //   // Add your email validation logic here
// //   // For example, you can use a regular expression to validate the email format
// //   // Here's a simple example using a regular expression pattern
// //   final pattern = r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';
// //   final regExp = RegExp(pattern);
// //   return regExp.hasMatch(email);
// // }
    
   
// // }
// // class SplashBackground extends StatelessWidget {
// //   const SplashBackground({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     final w = MediaQuery.of(context).size.width;
// //     final h = MediaQuery.of(context).size.height;
// //     return Stack(
// //       children: [
        
// //         Positioned(
// //           top:50,
// //           // bottom: 14,
// //           // left: (w - 280) / 2,
// //           child: const CircleWidget(),
// //         ),
// //         Positioned(

// //               bottom: 50,
// //               left: -145,
// //               child: Image.asset(
// //                 'assets/images/login-signup/logo.png', 
// //                 width: 48, 
// //                 height: 48)
// //             ),
// //       ],
// //     );
// //   }
// // }
// // class CircleWidget extends StatelessWidget {
// //   const CircleWidget({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //       width: 960,
// //       height: 960,
// //       decoration: const BoxDecoration(
// //         shape: BoxShape.circle,
// //         color: Color.fromARGB(255, 111, 229, 125),
                
              
// //           ),
// //       );
// //   }
// // }
//  import 'package:flutter/material.dart';

// class SignupPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             // SplashBackground(),
//             SizedBox(height: 16.0),
//             Text(
//               'Sign Up for Free',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 24.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 16.0),
//             Container(
//               // Name Input
//             ),
//             SizedBox(height: 16.0),
//             Container(
//               // Email Input
//             ),
//             SizedBox(height: 16.0),
//             Container(
//               // Password Input
//             ),
//             SizedBox(height: 16.0),
//             Container(
//               // Confirm Password Input
//             ),
//             SizedBox(height: 16.0),
//             ElevatedButton(
//               onPressed: () {
//                 // Perform sign up logic here
//               },
//               child: Text('Sign Up'),
//             ),
//             SizedBox(height: 16.0),
//             TextButton(
//               onPressed: () {
//                 // Handle sign in button press
//               },
//               child: RichText(
//                 textAlign: TextAlign.center,
//                 text: TextSpan(
//                   style: DefaultTextStyle.of(context).style.copyWith(
//                     fontSize: 14,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                     decoration: TextDecoration.none,
//                   ),
//                   children: <TextSpan>[
//                     const TextSpan(
//                       text: 'Already have an account?',
//                     ),
//                     TextSpan(
//                       text: ' Sign In',
//                       style: TextStyle(
//                         color: Color.fromARGB(255, 206, 91, 4),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class SplashBackground extends StatelessWidget {
//   const SplashBackground({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         Positioned(
//           top: 50,
//           child: CircleWidget(),
//         ),
//         Positioned(
//           bottom: 50,
//           left: -145,
//           child: Image.asset(
//             'assets/images/login-signup/logo.png',
//             width: 48,
//             height: 48,
//           ),
//         ),
//       ],
//     );
//   }
// }

// class CircleWidget extends StatelessWidget {
//   const CircleWidget({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 960,
//       height: 960,
//       decoration: const BoxDecoration(
//         shape: BoxShape.circle,
//         color: Color.fromARGB(255, 111, 229, 125),
//       ),
//     );
//   }
// }

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/FormHelper.dart';
// import 'package:snippet_coder_utils/ProgressHUD.dart';
// import 'package:snippet_coder_utils/hex_color.dart';

import '../services/api_service.dart';
import '../config.dart';
import '../models/login_request_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isApiCallProcess = false;
  bool hidePassword = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  String? userName;
  String? password;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: HexColor("#283B71"),
        body: ProgressHUD(
          child: Form(
            key: globalFormKey,
            child: _loginUI(context),
          ),
          inAsyncCall: isApiCallProcess,
          opacity: 0.3,
          key: UniqueKey(),
        ),
      ),
    );
  }

  Widget _loginUI(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 5.2,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white,
                  Colors.white,
                ],
              ),
              borderRadius: BorderRadius.only(
                //topLeft: Radius.circular(100),
                //topRight: Radius.circular(150),
                bottomRight: Radius.circular(100),
                bottomLeft: Radius.circular(100),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Padding(
                //   padding: const EdgeInsets.only(top: 20),
                //   child: Center(
                //     child: Text(
                //       "Shopping App",
                //       style: TextStyle(
                //         fontWeight: FontWeight.bold,
                //         fontSize: 40,
                //         color: HexColor("#283B71"),
                //       ),
                //     ),
                //   ),
                //),
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/ShoppingAppLogo.png",
                    fit: BoxFit.contain,
                    width: 250,
                  ),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 30, top: 50),
            child: Text(
              "Login",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: FormHelper.inputFieldWidget(
              context,
              const Icon(Icons.person),
              "Username",
              "Username",
              (onValidateVal) {
                if (onValidateVal.isEmpty) {
                  return 'Username can\'t be empty.';
                }

                return null;
              },
              (onSavedVal) => {
                userName = onSavedVal,
              },
              initialValue: "",
              obscureText: false,
              borderFocusColor: Colors.white,
              prefixIconColor: Colors.white,
              borderColor: Colors.white,
              textColor: Colors.white,
              hintColor: Colors.white.withOpacity(0.7),
              borderRadius: 10,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: FormHelper.inputFieldWidget(
              context,
              const Icon(Icons.lock),
              "Password",
              "Password",
              (onValidateVal) {
                if (onValidateVal.isEmpty) {
                  return 'Password can\'t be empty.';
                }

                return null;
              },
              (onSavedVal) => {
                password = onSavedVal,
              },
              initialValue: "",
              obscureText: hidePassword,
              borderFocusColor: Colors.white,
              prefixIconColor: Colors.white,
              borderColor: Colors.white,
              textColor: Colors.white,
              hintColor: Colors.white.withOpacity(0.7),
              borderRadius: 10,
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    hidePassword = !hidePassword;
                  });
                },
                color: Colors.white.withOpacity(0.7),
                icon: Icon(
                  hidePassword ? Icons.visibility_off : Icons.visibility,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 25,
              ),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.grey, fontSize: 14.0),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Forget Password ?',
                      style: const TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: FormHelper.submitButton(
              "Login",
              () {
                if (validateAndSave()) {
                  setState(() {
                    isApiCallProcess = true;
                  });

                  loginrequestmodel model = loginrequestmodel(
                    email: email,
                    password: password,
                  );

                  APIService.login(model).then(
                    (response) {
                      setState(() {
                        isApiCallProcess = false;
                      });

                      if (response) {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          '/home',
                          (route) => false,
                        );
                      } else {
                        FormHelper.showSimpleAlertDialog(
                          context,
                          Config.appName,
                          "Invalid Username/Password !!",
                          "OK",
                          () {
                            Navigator.of(context).pop();
                          },
                        );
                      }
                    },
                  );
                }
              },
              btnColor: HexColor("283B71"),
              borderColor: Colors.white,
              txtColor: Colors.white,
              borderRadius: 10,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "OR",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.only(
                right: 25,
              ),
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(color: Colors.white, fontSize: 14.0),
                  children: <TextSpan>[
                    const TextSpan(
                      text: 'Dont have an account? ',
                    ),
                    TextSpan(
                      text: 'Sign up',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(
                            context,
                            '/register',
                          );
                        },
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}




























