import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_manager/ui/widgets/screen_bagground.dart';
import '../utils/asset_paths.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBagground(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 80),
              Text(
                'Get Started With',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height: 24),
              TextFormField(
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(hintText: 'Email'),
              ),
              SizedBox(height: 8),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(hintText: 'Password'),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: _onTapSigninButton,
                child: Icon(Icons.arrow_circle_right_outlined),
              ),
       Center(
         child: Column(
                  children: [
                    TextButton(
                      onPressed: _onTapForgotPasswordButton,
                      child: Text(
                        'Forget password ?',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    RichText(
                      text: TextSpan(
                        text: "Don't have any account ?",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.4,
                        ),
                        children: [
                          TextSpan(
                            text: 'Sign Up',
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.w700,
                            ),
                            recognizer:
                                TapGestureRecognizer()..onTap = _onTapSignUpButton,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
       )         ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _onTapSigninButton() {}
  void _onTapForgotPasswordButton() {}
  void _onTapSignUpButton() {}
}
