import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:task_manager/ui/widgets/screen_bagground.dart';
import 'package:task_manager/ui/widgets/tm_app_bar.dart';
import '../utils/asset_paths.dart';

class UpdateProfileScreen extends StatefulWidget {
  const UpdateProfileScreen({super.key});
  static const String name='/update-profile';

  @override
  State<UpdateProfileScreen> createState() => _UpdateProfileScreenState();
}

class _UpdateProfileScreenState extends State<UpdateProfileScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _phoneTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final GlobalKey<FormState> _formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TaskManagerAppBar(),
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
                  SizedBox(height:80),
                  Center(
                    child: Text(
                      'Update Profile',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  SizedBox(height: 25),

                  SizedBox(height: 8),
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
                    onPressed:_onTapSubmitButton,
                    child: Icon(Icons.arrow_circle_right_outlined),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSubmitButton() {
    if(_formkey.currentState!.validate()){
      //TODO:Update profile with Api
    }
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
