import 'package:flutter/material.dart';
import 'package:mindfuldost_hub/homepage/home1.dart';
import 'package:mindfuldost_hub/models/login_request_model.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
   bool isApiCallProcess = false;
  bool hidePassword = true;
  GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  String? email;
  String? password;

  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signin'),
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

//             // Sign Up Text
            Text(
              'Sign In to Your Account',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 16.0),

//            
           
//             // Email Input
            
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

//             // Password Input
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


//             
//             // Sign in Button
            ElevatedButton(
              onPressed: () {
                // Perform sign up logic here
                // if (isValidEmail(Value)) {
                // Navigator.push(
                //   context,MaterialPageRoute(builder: (context) => homepage(username: 'username')));
                  
                // }
                
              },
              child: Text('Sign In'),
            ),
            // Center(
            //   child: FormHelper.submitButton(
            //     "Signin",
            //     (){
            //       if(validateAndSave()){
            //         setState(() {
            //           isApiCallProcess=true;
            //         });
            //       loginrequestmodel model=loginrequestmodel(email: email!, password: password!,
            //       );
            //       APIService.login(model).then((value) =>null);
            //       }
            //     },
            //     // botoonColor: Colors.blue,
            //     Border(buttonColor: Colors.black, borderColor: Colors.black, text: "Signin"),
            //   ),
            // )

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
                    text: 'Dont have an account?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  TextSpan(
                    text: ' Sign Up',
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
  bool validateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  } 
}
