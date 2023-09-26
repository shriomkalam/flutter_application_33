import 'package:flutter/material.dart';
import 'package:flutter_application_33/Home1.dart';
import 'package:flutter_application_33/Login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

var kkkk;
var jjjj;

class _signupState extends State<signup> {
  final formkey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void checkLogin() async {
    SharedPreferences perf = await SharedPreferences.getInstance();
    // perf.setBool('isLoggedIn', true);
    String? val34 = perf.getString("login222");
    setState(() {
      val34 = kkkk.text.toString();
    });
    print("Rahul${val34}");
    if (val34 != null) {
      Navigator.of(context).pushNamedAndRemoveUntil(
          '/Drawer',
          (
            Route<dynamic> route,
          ) =>
              false);
    }
  }

  // Future<void> set() async {
  //   SharedPreferences perf = await SharedPreferences.getInstance();
  //   await perf.setString(
  //     "emai",
  //     emai["emai"],
  //   );
  //   emai = await perf.getString(
  //     "emai",
  //   );
  //   print("Token ddddddd ====>>>>>> $emai");
  //   setState(() {
  //     //  profill();
  //     // profill();
  //     // print("shriom ${Tokee}");
  //   });
  //   print("====>>> Splash ddddd $emai");
  // }

  @override
  Widget build(BuildContext context) {
    print("nnnnnnnnnnnn${emailController.text.toString()}");

    setState(() {
      kkkk = emailController;
    });
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('assets/images/Rahulrajput287.png'),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
              child: TextFormField(
                controller: emailController,
                onFieldSubmitted: (value) {
                  validate();
                },
                textInputAction: TextInputAction.next,
                validator: (value) {
                  if (value!.isEmpty) {
                    return " Please enter a email";
                  } else if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                      .hasMatch(value)) {
                    return "Please enter a valid email";
                  }
                },
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 25),
                    hintText: 'Email Id',
                    prefixIcon: Icon(
                      Icons.email,
                      size: 18,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
              child: TextFormField(
                onFieldSubmitted: (value) {
                  validate();
                },
                textInputAction: TextInputAction.done,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your password";
                  } else if (value.length < 8) {
                    return 'Please enter password minimum 8 charecter';
                  }
                  return null;
                },
                controller: passwordController,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 25),
                    prefixIcon: Icon(
                      Icons.remove_red_eye,
                      size: 18,
                    ),
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  height: 60.0,
                  child: GestureDetector(
                    onTap: () {
                      checkLogin();
                      // print("hello raj${emailController.text.toString()}");
                      print("heloo dppppp ${kkkk.text.toString()}");
                      validate();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile()));

                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => signup()));

                      // // );
                      // Get.to(() => Home12());
                      print("rady");
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        // gradient: LinearGradient(
                        //   begin: Alignment.topRight,
                        //   end: Alignment.bottomLeft,
                        //   colors: [
                        //     // Color.fromRGBO(232, 170, 32, 1),
                        //     // Color.fromRGBO(247, 223, 137, 1),
                        //     // Color.fromRGBO(224, 146, 0, 1)
                        //   ],
                        // ),
                        border: Border.all(
                          color: Color.fromRGBO(232, 170, 32, 1),
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        // color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Center(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void validate() {
    emailController.text.toString();
    passwordController.toString();
  }
}
