import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:task_manager/ui/screens/login_screen.dart';
import 'package:task_manager/ui/widgets/screen_background.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenBackground(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 82),
                    Text(
                      'Join with us',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: 24),
                    TextFormField(
                      controller: _emailTEController,
                      decoration: InputDecoration(
                        hintText: "Email"
                      ),
                    ),
                    SizedBox(height: 8),TextFormField(
                      controller: _firstNameTEController,
                      decoration: InputDecoration(
                        hintText: "First Name"
                      ),
                    ),
                    SizedBox(height: 8),TextFormField(
                      controller: _lastNameTEController,
                      decoration: InputDecoration(
                        hintText: "Last Name"
                      ),
                    ),
                    SizedBox(height: 8),TextFormField(
                      controller: _mobileTEController,
                      decoration: InputDecoration(
                        hintText: "Mobile"
                      ),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      controller: _passwordTEController,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                    ),
                    SizedBox(height: 16),
                    FilledButton(
                      onPressed: () {},
                      child: Icon(Icons.arrow_circle_right_outlined),
                    ),
                    SizedBox(height: 36,),
                    Center(
                      child: Column(
                        children: [
                          RichText(
                            text: TextSpan(
                              style: TextStyle(color: Colors.black, fontWeight:FontWeight.w600),
                              text: "Already have an account ?",
                              children: [
                                TextSpan(text: "Sign In", style: TextStyle(
                                  color: Colors.green,
                                ),recognizer: TapGestureRecognizer()..onTap =_onTapLogInScreen
                                )
                              ],
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
        ),
      ),
    );
  }

  void _onTapLogInScreen(){
    Navigator.push(
      context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  void dispose() {
    _emailTEController.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _mobileTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}
