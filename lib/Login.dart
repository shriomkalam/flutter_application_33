// import 'package:flutter/material.dart';
// import 'package:flutter_application_33/Home1.dart';
// import 'package:flutter_application_33/signup.dart';

// class Login extends StatefulWidget {
//   const Login({super.key});

//   @override
//   State<Login> createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Image.asset('assets/images/Rahulrajput30.png'),
//             // Container(
//             //   decoration: BoxDecoration(
//             //       image: DecorationImage(
//             //           image: AssetImage('assets/images/Rahulrajput33.png'))),
//             // ),
//             // SizedBox(
//             //   height: 70,
//             // ),
//             // Row(
//             //   mainAxisAlignment: MainAxisAlignment.center,
//             //   children: [
//             //     Text(
//             //       "ORGANIZE",
//             //       style: TextStyle(fontSize: 40),
//             //     )
//             //   ],
//             // ),
//             // Text(
//             //   "Organize, find, and enjoy\nyours loyalty cards in a\nmore modern, relax and\ndynamic way",
//             //   style: TextStyle(fontSize: 16),
//             // ),
//             Padding(
//               padding: const EdgeInsets.only(left: 50, top: 15),
//               child: Row(
//                 children: [
//                   Text(
//                     "Next",
//                     style: TextStyle(fontSize: 21),
//                   ),
//                   IconButton(
//                       onPressed: () {}, icon: Icon(Icons.arrow_right_alt_sharp))
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(top: 50),
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     padding: EdgeInsets.only(left: 30, right: 30),
//                     height: 60.0,
//                     child: GestureDetector(
//                       onTap: () {
//                         Navigator.push(context,
//                             MaterialPageRoute(builder: (context) => signup()));

//                         // );
//                         //    a

//                         // print("rady");
//                       },
//                       child: Container(
//                         decoration: BoxDecoration(
//                           color: Colors.black,
//                           // gradient: LinearGradient(
//                           //   begin: Alignment.topRight,
//                           //   end: Alignment.bottomLeft,
//                           //   colors: [
//                           //     Color.bl
//                           //     // Color.fromRGBO(232, 170, 32, 1),
//                           //     // Color.fromRGBO(247, 223, 137, 1),
//                           //     // Color.fromRGBO(224, 146, 0, 1)
//                           //   ],
//                           // ),
//                           border: Border.all(
//                             color: Color.fromRGBO(232, 170, 32, 1),
//                             style: BorderStyle.solid,
//                             width: 1.0,
//                           ),
//                           // color: Colors.transparent,
//                           borderRadius: BorderRadius.circular(30.0),
//                         ),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: <Widget>[
//                             Center(
//                               child: Text(
//                                 "Sign up",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontFamily: 'Montserrat',
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w600,
//                                   letterSpacing: 1,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               height: 20,
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             //
//             SizedBox(
//               height: 20,
//             ),
//             Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Container(
//                   padding: EdgeInsets.only(left: 30, right: 30),
//                   height: 60.0,
//                   child: GestureDetector(
//                     onTap: () {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) => Profile()));

//                       // );
//                       // Get.to(() => Profile());
//                       print("rady");
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         // gradient: LinearGradient(
//                         //   begin: Alignment.topRight,
//                         //   end: Alignment.bottomLeft,
//                         //   colors: [
//                         //     // Color.fromRGBO(232, 170, 32, 1),
//                         //     // Color.fromRGBO(247, 223, 137, 1),
//                         //     // Color.fromRGBO(224, 146, 0, 1)
//                         //   ],
//                         // ),
//                         border: Border.all(
//                           color: Color.fromRGBO(232, 170, 32, 1),
//                           style: BorderStyle.solid,
//                           width: 1.0,
//                         ),
//                         // color: Colors.transparent,
//                         borderRadius: BorderRadius.circular(30.0),
//                       ),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: <Widget>[
//                           Center(
//                             child: Text(
//                               "Login",
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontFamily: 'Montserrat',
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w600,
//                                 letterSpacing: 1,
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 20,
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 15,
//                 )
//               ],
//             ),
//             //
//           ],
//         ),
//       ),
//     );
//   }
// }
