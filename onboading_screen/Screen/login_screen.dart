import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:widget_tutorial/onboading_screen/Screen/signup_screen.dart';

import '../icons.dart';
import 'home_page.dart';

class LoginScreen extends StatefulWidget {

  final String? email;
  final String? password;

  // Constructor with optional email and password parameters
  const LoginScreen({Key? key, this.email, this.password}) : super(key: key);



  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {




  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  bool _obscureText = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emailController.text = widget.email ?? "";
    _passwordController.text = widget.password ?? "";
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _emailFocus.dispose();
    _passwordFocus.dispose();
    super.dispose();
  }

  void _login() {
    if (_formKey.currentState!.validate()) {
      // Handle login logic
      print(
          "Logging in with: ${_emailController.text}, \n"
              "${_passwordController.text}");
      Navigator.push(context, MaterialPageRoute(builder: (context)=> EarningHomeScreen()));
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Radius value to round the corners
                    child: Image(
                        image: AssetImage(OnBoardingIcons.login),
                      width: double.infinity,
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Lottie.asset(
                  //     "assets/animation/Animation - 1736285138415.json",
                  //     width: double.infinity,
                  //     height: 200),
                  SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    controller: _emailController,
                    focusNode: _emailFocus,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your email";
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.next,
                    onFieldSubmitted: (_) {
                      FocusScope.of(context).requestFocus(_passwordFocus);
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    controller: _passwordController,
                    focusNode: _passwordFocus,
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(_obscureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password";
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.done,
                    onFieldSubmitted: (_) => _login(),
                  ),
                  SizedBox(height: 30),
                  GestureDetector(
                    onTap: _login,
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          "Log in",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Does not have account?',
                        style: TextStyle(fontSize: 16, color: Colors.black),
                        children: <TextSpan>[

                          TextSpan(text: ' Signup', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
                          recognizer: TapGestureRecognizer()
                              ..onTap=(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> SignupScreen()));

                              }
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage(OnBoardingIcons.facebook),
                          width: 30,
                          height: 30,
                        ),
                        SizedBox(width: 25),
                        Image(
                          image: AssetImage(OnBoardingIcons.google),
                          width: 30,
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
