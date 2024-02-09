import 'package:flutter/material.dart';
import 'package:mindfuldost_hub/homepage/home1.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  _SignupPageState createState() => _SignupPageState();
}
class _SignupPageState extends State<SignupPage> {
  bool isApiCallProcess = false;
  bool hidePassword = true;
  static final GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  String? userName;
  String? password;
  String? email;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body:Center( 
      child:Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // Company Logo
            Image.asset('assets/images/login-signup/logo.png', width: 100, height: 100),

            SizedBox(height: 16.0),

            // Sign Up Text
            Text(
              'Sign Up for Free',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 16.0),

            // Name Input
            Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 202, 164, 164),
                border: Border.all(
                  color: Colors.grey,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0), 
              ),
            child:TextFormField(
              decoration: InputDecoration(
                labelText: ' Name',
                prefixIcon: Icon(Icons.person),
              ),
              validator: (value) {
                if (value==null) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            ),

            SizedBox(height: 16.0),

            // Email Input
            
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 202, 164, 164),
                border: Border.all(
                  color: Colors.grey,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0), 
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  
                  labelText: ' Email Address',
                  border: InputBorder.none,
                  prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  if (value==null) {
                    return 'Please enter your email address';
                  }
                  if (!isValidEmail(value)) {
                    return 'Invalid email address';
                  }
                  return null;
                },
              ),
            ),

            SizedBox(height: 16.0),

            // Password Input
            Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 202, 164, 164),
                border: Border.all(
                  color: Colors.grey,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0), 
              ),
            child:TextFormField(
              decoration: InputDecoration(
                labelText: ' Password',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
              validator: (value) {
                if (value==null) {
                  return 'Please enter a password';
                }
                return null;
              },
            ),
            ),

            SizedBox(height: 16.0),

            // Confirm Password Input
            Container(
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 202, 164, 164),
                border: Border.all(
                  color: Colors.grey,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0), 
              ),
            child:TextFormField(
              decoration: InputDecoration(
                labelText: ' Confirm Password',
                prefixIcon: Icon(Icons.lock),
                
              ),
              obscureText: true,
              validator: (value) {
                if (value==null) {
                  return 'Please confirm your password';
                }
                return null;
              },
            ),
            ),

            SizedBox(height: 16.0),

            // Sign Up Button
            ElevatedButton(
              onPressed: () {
                // Perform sign up logic here
                // if (isValidEmail(Value)) {
                // Navigator.push(
                //   context,MaterialPageRoute(builder: (context) => homepage(username: 'username')));
                  
                // }
                
              },
              child: Text('Sign Up'),
            ),

            SizedBox(height: 16.0),

            
            TextButton(
              onPressed: () {
                // Handle sign in button press
              },
               child:
              // Text('Already have an account?   Sign In'),
              RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  TextSpan(
                    text: 'Already have an account?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  TextSpan(
                    text: ' Sign In',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 206, 91, 4), // Change the color as desired
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
            ),
          ],
        ),
      ),
      ),
    );
  }

  bool isValidEmail(String email) {
    // Add your email validation logic here
    final pattern = r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$';
  final regExp = RegExp(pattern);
  return regExp.hasMatch(email);
    
  }
}


























// import 'package:flutter/material.dart';

// class SignUpPage extends StatelessWidget {
//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Sign Up'),
//       ),
//       body: Form(
//         key: _formKey,
//         child: ListView(
//           padding: EdgeInsets.all(16.0),
//           children: [
//             // Name Input
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Name',
//               ),
//               validator: (value) {
//                 if (value.isEmpty) {
//                   return 'Please enter your name';
//                 }
//                 return null;
//               },
//             ),

//             SizedBox(height: 16.0),

//             // Email Input
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Email Address',
//               ),
//               validator: (value) {
//                 if (value.isEmpty) {
//                   return 'Please enter your email address';
//                 }
//                 if (!isValidEmail(value)) {
//                   return 'Invalid email address';
//                 }
//                 return null;
//               },
//             ),

//             SizedBox(height: 16.0),

//             // Password Input
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Password',
//               ),
//               obscureText: true,
//               validator: (value) {
//                 if (value.isEmpty) {
//                   return 'Please enter a password';
//                 }
//                 return null;
//               },
//             ),

//             SizedBox(height: 16.0),

//             // Confirm Password Input
//             TextFormField(
//               decoration: InputDecoration(
//                 labelText: 'Confirm Password',
//               ),
//               obscureText: true,
//               validator: (value) {
//                 if (value.isEmpty) {
//                   return 'Please confirm your password';
//                 }
//                 return null;
//               },
//             ),

//             SizedBox(height: 16.0),

//             // Sign Up Button
//             RaisedButton(
//               onPressed: () {
//                 if (_formKey.currentState.validate()) {
//                   // Save data to database
//                   saveDataToDatabase();

//                   // Navigate to home screen
//                   Navigator.pushReplacementNamed(context, '/home');
//                 }
//               },
//               child: Text('Sign Up'),
//             ),

//             SizedBox(height: 16.0),

//             // Already have an account? Sign In
//             FlatButton(
//               onPressed: () {
//                 // Navigate to the sign in page
//                 Navigator.pushReplacementNamed(context, '/signin');
//               },
//               child: Text('Already have an account? Sign In'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   bool isValidEmail(String email) {
//     // Add your email validation logic here
//     return true;
//   }

//   void saveDataToDatabase() {
//     // Add your database saving logic here
//   }
// }
