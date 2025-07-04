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
              SizedBox(height: 80,),
              Text('Get Started With',style: Theme.of(context).textTheme.titleLarge,),
              SizedBox(height: 24,),
              TextFormField(
                decoration:InputDecoration(
                  hintText: 'Email',
                ) ,
              ),
              SizedBox(height: 8,),
              TextFormField(
                decoration:InputDecoration(
                  hintText: 'Password',

                ) ,
              ),
              SizedBox(height: 8,),
              ElevatedButton(
                onPressed: () {},
                child: Icon(Icons.arrow_circle_right_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
