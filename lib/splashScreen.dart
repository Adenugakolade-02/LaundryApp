import 'package:flutter/material.dart';
import 'package:laundryapp/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async{
    await Future.delayed(const Duration(milliseconds: 5000), (){});
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MyHomePage(title:'Splash screen done!')));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width : 212,
          height: 195,
          child: Image.asset('assets/images/Pngtree.png', fit: BoxFit.contain),
        ),
      )
    );
  }
}
