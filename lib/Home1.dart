import 'dart:convert';
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:flutter_application_33/edit_%20profile.dart';
import 'package:flutter_application_33/Loginn.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;

class Profile extends StatefulWidget {
  const Profile({super.key});
  // final nnnnn;
  // Profile(this.nnnnn);
  @override
  State<Profile> createState() => _ProfileState();
}

var Tokee;
var rkkkk;
var gggg;
var data6;
List<Map<String, String>> lsst = [
  {
    "name": "Place of birth",
    "desc": "bhopal",
    // "image": "assets/images/Notification1.png",
    // "image2": "assets/images/message3.png",
  },
  {
    "name": "Address",
    "desc": "indore m.p",
    // "image": "assets/images/notification2.png",
    // "image2": "assets/images/message3.png",
  },
  {
    "name": "Date of birth",
    "desc": "03/04/1999",
    // "image": "assets/images/Notification3.png",
    //  "image2": "",
  },
  {
    "name": "privious company name",
    "desc": 'Techpanda private ltd',
    //   "image": "assets/images/Notification4.png",
    //  "image2": "assets/images/message3.png",
  },
  {
    "name": "skills",
    "desc": "dart flutter ios swift",
    // "image": "assets/images/Notification5.png",
    //    "time_stamp": "1 hours ago",
  },
  {
    "name": "Mobile Number",
    "desc": '8234978069',
    // "image": "assets/images/Notification6.png",
    // "time_stamp": "1 hours ago",
  },
  {
    "name": "Home",
    "desc": 'indore',
    // "image": "assets/images/Notification6.png",
    //  "time_stamp": "1 hours ago",
  },
  {
    "name": "Email iD",
    "desc": kkkk.text.toString(),
    // "image": "assets/images/Notification6.png",
    //  "time_stamp": "1 hours ago",
  },
];

class _ProfileState extends State<Profile> {
// void checkLogi() async {
//     SharedPreferences perf = await SharedPreferences.getInstance();
//     // perf.setBool('isLoggedIn', true);
//     String? val34 = perf.getString("login222");
//     setState(() {
//       val34 = kkkk.text.toString();
//     });
//     print("Rahul${val34}");
//     if (val34 != null) {
//       Navigator.of(context).pushNamedAndRemoveUntil(
//           '/Drawer',
//           (
//             Route<dynamic> route,
//           ) =>
//               false);
//     }
//   }

  var jssss;
  void initState() {
    super.initState();
    //   // profill();
    // get();

    // lsst()
  }

  final formkey = GlobalKey<FormState>();
  File? selectedImage1;
  File? selectedImage2;
  File? selectedImage3;
  String base64Image = " ";

  Future<void> chooseImage(type) async {
    var image;
    if (type == 'camera') {
      image = await ImagePicker().pickImage(
        source: ImageSource.camera,
      );
    } else {
      image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );
    }
    if (image != null) {
      setState(() {
        selectedImage1 = File(image.path);
        base64Image = base64Encode(selectedImage1!.readAsBytesSync());
      });
    }
  }

  Future<void> chooseImage1(type) async {
    var image;
    if (type == 'camera') {
      image = await ImagePicker().pickImage(
        source: ImageSource.camera,
      );
    } else {
      image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );
    }
    if (image != null) {
      setState(() {
        selectedImage2 = File(image.path);
        base64Image = base64Encode(selectedImage2!.readAsBytesSync());
      });
    }
  }

  Future<void> chooseImage2(type) async {
    var image;
    if (type == 'camera') {
      image = await ImagePicker().pickImage(
        source: ImageSource.camera,
      );
    } else {
      image = await ImagePicker().pickImage(
        source: ImageSource.gallery,
      );
    }
    if (image != null) {
      print("Selected");
      setState(() {
        selectedImage3 = File(image.path);

        base64Image = base64Encode(selectedImage3!.readAsBytesSync());
      });
    } else {
      print("Image not sel");
    }
  }

  // Future<void> pppp() async {
  //   SharedPreferences perf = await SharedPreferences.getInstance();
  //   emai = perf.getString(
  //     "emai",
  //   );
  //   setState(() {
  //     //  profill();
  //     // profill();
  //     // print("shriom ${Tokee}");
  //   });
  //   print("====>>> Splash jjjjj $emai");
  // }
  // void initState() {
  //   // print("===>>>> Inside splash screen");
  //   getTo();
  //       // profill();
  //   // print("====>>> Getting this token $res");
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    setState(() {});
    // print("rahukkkkkk${emai}");
    //  print("......tjid.......${data5['userdata']['username']}");
    print("nnnn--------${Tokee}");
    return Scaffold(
      backgroundColor: Color.fromRGBO(43, 45, 92, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(43, 45, 92, 1),
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        // leading: Padding(
        //   padding: const EdgeInsets.all(15.0),
        //   child: Image.asset("assets/images/drawer_icon.png",),
        // ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
                onTap: () {
                  // Get.to(Updateprofile());
                },
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => signup()));
                  },
                  child: Text("Logout"),
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              /** Card Widget **/
              child: Container(
                // width: 300,
                //           height: 500,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(2, 4, 50, 1),
                    // color: Colors.red,
                    borderRadius: BorderRadiusDirectional.circular(30)),
                child: Card(
                  shape: BeveledRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(13)),

                  elevation: 10,
                  shadowColor: Colors.black,
                  color: Color.fromRGBO(2, 4, 50, 1),
                  child: SizedBox(
                    width: 319,
                    height: 510,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Stack(children: <Widget>[
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 25, right: 25),
                              child: Image.asset("assets/images/drawer1.png"),
                            ),
                            //  Padding(
                            // padding: const EdgeInsets.all(40.0),
                            // child:
                            Positioned(
                              left: 80,
                              top: 60,
                              child: Container(
                                child: Image.asset(
                                    "assets/images/profile_icon.png"),
                                height: 100,
                              ),
                            ),
                            Positioned(
                              left: 80,
                              top: 60,
                              child: Container(
                                child: GestureDetector(
                                  onTap: () {
                                    chooseImage1("Gallery");
                                  },
                                  child: CircleAvatar(
                                    radius: 50,
                                    // backgroundColor: Color.fromARGB(255, 234, 208, 131),

                                    // height: ScreenSize.size.height * 0.18,
                                    // width: ScreenSize.size.width * 0.28,
                                    // decoration: BoxDecoration(
                                    //     borderRadius: BorderRadius.circular(10),
                                    //     // color: Color.fromARGB(255, 247, 237, 231),
                                    //     color: Colors.grey[300]),
                                    child: selectedImage2 != null
                                        ? CircleAvatar(
                                            radius: 50,
                                            // maxRadius:100 ,
                                            // minRadius: 100,
                                            backgroundImage: Image.file(
                                              selectedImage2!,
                                              fit: BoxFit.cover,
                                            ).image,
                                          )
                                        // : Container(child: Image.asset("")),

                                        : Container(
                                            child: IconButton(
                                                onPressed: () {
                                                  chooseImage1("Gallery");
                                                },
                                                icon: Icon(Icons.person),
                                                iconSize: 40,
                                                color: Colors.white),
                                          ),
                                  ),
                                ),
                                height: 100,
                              ),
                            ),
                            Positioned(
                              left: 110,
                              top: 130,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Updateprofile()));
                                },
                                child: Container(
                                  child:
                                      Image.asset("assets/images/drawer2.png"),
                                  height: 40,
                                ),
                              ),
                            ),
                            // ),
                          ]),

                          const SizedBox(
                            height: 10,
                          ), //SizedBox
                          Text(
                            'kritu',
                            // data5['userdata']['username'],
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ), //Text
                          const SizedBox(
                            height: 2,
                          ), //SizedBox
                          Text(
                            kkkk.text.toString(),
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ), //Textstyle
                          ), //Text
                          const SizedBox(
                            height: 15,
                          ), //SizedBox
                          SizedBox(
                            width: 100,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/profile_icon (4).png",
                                height: 30,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "21",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 30),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    //  Link('https://www.facebook.com/');
                                    // //  Link('')
                                    NetworkImage('https://www.facebook.com/');
                                    //  const url = "https://www.facebook.com/";
                                  },
                                  child: Image.asset(
                                    "assets/images/fb_icon.png",
                                    height: 50,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(left: 30),
                                child: Image.asset(
                                  "assets/images/Whattshp_icon.png",
                                  height: 50,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Image.asset(
                                  "assets/images/instragram_icon.png",
                                  height: 50,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Facebook",
                                style: TextStyle(color: Colors.white),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Text(
                                  "Whattsapp",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "instragram",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          )
                        ],
                      ), //Column
                    ), //Padding
                  ), //SizedBox
                ),
              ),
              //Card
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 21, bottom: 10),
                  child: Text(
                    "About Us",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(2, 4, 50, 1),
                      // color: Colors.red,
                      borderRadius: BorderRadiusDirectional.circular(30)),
                  child: Card(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(12)),
                    shadowColor: Colors.black,
                    color: Color.fromRGBO(2, 4, 50, 1),
                    elevation: 10,
                    child: SizedBox(
                      height: 150,
                      width: 319,
                      child: Padding(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Text(
                              'this is the ujj',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 28, bottom: 20),
              child: Row(
                children: [
                  Text(
                    "Personal Information",
                    style: TextStyle(color: Colors.white, fontSize: 22),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(2, 4, 50, 1),
                      // color: Colors.red,
                      borderRadius: BorderRadiusDirectional.circular(30)),
                  child: Card(
                    shape: BeveledRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(12)),
                    shadowColor: Colors.black,
                    color: Color.fromRGBO(2, 4, 50, 1),
                    elevation: 10,
                    child: SizedBox(
                      height: 715,
                      width: 319,
                      child: Padding(
                          padding: const EdgeInsets.only(top: 2),
                          child: ListView.separated(
                            primary: false,
                            itemCount: lsst.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 10, top: 2),
                                // child: GestureDetector(
                                //   onTap: () {
                                //     // Get.to(chatmessage(messageContent: "", messageType: ""));
                                //     Get.to(ChatScreen()
                                // );
                                //   },
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      ListTile(
                                        // title: Text(lst[index]["name"].toString()),
                                        //  leading: Image.asset(lsst[index]["image"].toString()),
                                        title: Text(
                                          lsst[index]["name"].toString(),
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        // trailing: Padding(
                                        //   padding: const EdgeInsets.all(20.0),
                                        //   child: Image.asset(lsst[index]["image2"].toString()),
                                        // ),
                                        subtitle: Text(
                                          lsst[index]["desc"].toString(),
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        // subtitle: Text(lst[index]["desc"].toString(),     style: Theme.of(context).textTheme.labelSmall),
                                      ),
                                    ],
                                  ),
                                ),
                                // ),
                              );
                            },
                            separatorBuilder:
                                (BuildContext context, int index) {
                              return Divider(
                                // height: 100,
                                color: Colors.white38,
                                thickness: 1,
                                indent: 0,
                                endIndent: 0,
                              );
                            },
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                )
              ],
            )
          ],
        ),
      ),
      // drawer: Dra.drawer(context)
    ); //MaterialApp
  }
}
