import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_33/Login.dart';
import 'package:flutter_application_33/Loginn.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // SplashController splashController = Get.put(SplashController());

  var res;
  Future<void> getToken() async {
    SharedPreferences perf = await SharedPreferences.getInstance();
    res = await perf.getString(
      "token",
    );
    setState(() {});
    print("====>>> Splash token $res");

    if (res == null) {
      print("hello rahul");
      Timer(
          Duration(seconds: 8),
          () => Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => const signup())));
    } else {
      print("=====>>>>>> $res");
      Timer(
          Duration(seconds: 8),
          () => Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => signup())));
    }

    // Timer(
    //     Duration(seconds: 6),
    //     () => Navigator.pushReplacement(
    //         context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  void initState() {
    // print("===>>>> Inside splash screen");
    getToken();
    // print("====>>> Getting this token $res");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      // GetBuilder<SplashController>(builder:
      // (controller) {
      //   return Text("${controller.getItem[0].toString()}")
      // }
      // )
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/Rahulrajput.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        // FlutterLogo(size:MediaQuery.of(context).size.heigh
        // child: Center(
        //     child: SizedBox(
        //         child: Image.asset(
        //           "assets/images/Rahulrajput.png",
        //         ),
        //         width: Get.width * 0.70)
        //         ),
      ),
    ]));
  }
}
