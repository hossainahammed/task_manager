import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_manager/ui/widgets/screen_bagground.dart';
import '../utils/asset_paths.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const String name='/sign-up';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _phoneTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBagground(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              key: _formkey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 80),
                  Center(
                    child: Text(
                      'Join With Us',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 24),
                  TextFormField(
                    controller: _emailTEController,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(hintText: 'Email'),
                    validator: (String?value){
                      if(value?.isEmpty ?? true){
                        return 'Enter a valid email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _firstNameTEController,
                    textInputAction: TextInputAction.next,
                    // obscureText: true,
                    decoration: InputDecoration(hintText: 'First name'),
                    validator: (String?value){
                      if(value?.trim().isEmpty ?? true) {
                        return 'Enter Your First Name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _lastNameTEController,
                    textInputAction: TextInputAction.next,
                    // obscureText: true,
                    decoration: InputDecoration(hintText: 'Last name'),
                    validator: (String?value){
                      if(value?.trim().isEmpty ?? true) {
                        return 'Enter Your Last Name';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _phoneTEController,
                    textInputAction: TextInputAction.next,
                    // obscureText: true,
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(hintText: 'Mobile number'),
                    validator: (String?value){
                      if(value?.trim().isEmpty ?? true) {
                        return 'Enter Your Mobile number';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordTEController,
                    obscureText: true,
                    decoration: InputDecoration(hintText: 'Password'),
                    validator: (String?value){
                      if(value?.isEmpty ?? true){
                        return 'Enter a valid Password';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed:_onTapSignUpButton,
                    child: Icon(Icons.arrow_circle_right_outlined),
                  ),
                  SizedBox(height: 32),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: " Have an account ?",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.4,
                        ),
                        children: [
                          TextSpan(
                            text: 'Sign In',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w700,
                            ),
                            recognizer:
                            TapGestureRecognizer()..onTap = _onTapSignInButton,
                          ),
                        ],
                      ),
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

  void _onTapSignUpButton() {
    if(_formkey.currentState!.validate()){
      //TODO:Sign in with Api
    }
  }

  void _onTapSignInButton() {
   Navigator.pop(context);
  }

  void dispose(){
    _emailTEController.dispose();
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _phoneTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}
