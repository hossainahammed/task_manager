import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task_manager/ui/utils/asset_paths.dart';

import 'sign_in_screen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});


  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void inistate(){
    super.initState();
    _moveToNextScreen();
  }

  Future<void> _moveToNextScreen()async{
    await Future.delayed(Duration(seconds: 2));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>SignInScreen()));
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SvgPicture.asset(AssetPaths.backgroundSvg,fit: BoxFit.cover,height: double.maxFinite,width: double.maxFinite,),
          Align(
            alignment: Alignment.center,
              // alignment: Alignment.center,
              child: SvgPicture.asset(AssetPaths.logoSvg))
        ],


      ),
    );
  }
}
