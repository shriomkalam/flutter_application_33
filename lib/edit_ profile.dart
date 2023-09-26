import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application_33/Home1.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';

class Updateprofile extends StatefulWidget {
  // final proup;
  // Updateprofile();
  @override
  State<Updateprofile> createState() => _UpdateprofileState();
}

var fullnnn;
var skilll;
var birthddd;
var birthppp;
var priviouscccc;
var addresss;
var homee;
var mobnnnn;
var emailll;
var aboutttt;

class _UpdateprofileState extends State<Updateprofile> {
// var firstnn;
// var Lastnn;
// var Usernn;
// var birthdd;
// var bithpp;
// var aniversarydd;

  TextEditingController dateInput = TextEditingController();
  TextEditingController anniversaryinput = TextEditingController();

  // void initState() {
  //   dateInput.text = ""; //set the initial value of text field
  //   super.initState();
  // }
  bool isSwitched = false;
  String? gender;
  final formkey = GlobalKey<FormState>();

  String check = 'Notification Form';
  File? selectedImage1;
  File? selectedImage2;
  File? selectedImage3;
  String base64Image = "";

  Future<void> chooseImage(type) async {
    var image;
    if (type == "camera") {
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
    if (type == "camera") {
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
    if (type == "camera") {
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

  // late int selectedRadio;
  TextEditingController full_name = TextEditingController();
  TextEditingController skills = TextEditingController();
  TextEditingController birth_date = TextEditingController();
  TextEditingController birth_place = TextEditingController();
  TextEditingController privious_company = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController Home = TextEditingController();
  TextEditingController mobno = TextEditingController();
  TextEditingController Email_id = TextEditingController();
  TextEditingController facebook = TextEditingController();
  TextEditingController whattshp = TextEditingController();
  TextEditingController instragram = TextEditingController();
  TextEditingController about = TextEditingController();

  // TextEditingController mobile_number = TextEditingController();
  // TextEditingController site = TextEditingController();
  // TextEditingController Address = TextEditingController();

  @override
  void initState() {
    super.initState();

    dateInput.text = ""; //set the initial value of text field
    anniversaryinput.text = "";
  }

  String dropdownvalue = 'New connection';
  String dropdownvalue1 = 'A1';

  var items = [
    'New connection',
    'inside Light replace',
    'outside Light replace'
  ];
  var items1 = [
    'A1',
    'A2',
    'A3',
  ];

  int _selectedIndex = 0;

  late String selectedRadio;
  // String? check;
  setSelectedRadio(vale) {
    setState(() {
      _selectedIndex = vale;
    });
  }

  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    setState(() {
      fullnnn = full_name;
      skilll = skills;
      birthddd = birth_date;
      birthppp = birth_place;
      priviouscccc = privious_company;
      addresss = address;
      homee = Home;
      mobnnnn = mobno;
      emailll = Email_id;
      aboutttt = about;
    });
    // int _vlaue = 1;
    var ScreenSize = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromRGBO(143, 145, 179, 1),
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(43, 45, 92, 1),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Profile(), maintainState: true));
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        // centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Text('Edit profile',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontFamily: 'bold',
              )),
        ),
        leadingWidth: 50,
        // backgroundColor: Colors.white,
        elevation: 2,
        foregroundColor: Colors.white,
        titleSpacing: -10,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                color: Color.fromRGBO(43, 45, 92, 1),
                //  color: Color.fromRGBO(2, 4, 50, 1),
                // width: ScreenSize.size.width * 0.94,
                // color: Colors.green,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(children: [
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: ScreenSize.size.height * 0.02,
                          ),
                          SizedBox(
                            height: ScreenSize.size.height * 0.01,
                          ),
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(00.0),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      // color: Colors.green,
                                      width: ScreenSize.size.width * 0.94,
                                      // height: ScreenSize.size.height * 0.12,
                                      // color: Colors.amber,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              SizedBox(
                                                child: Column(
                                                  children: [
                                                    // CircleAvatar(
                                                    //     backgroundColor: Color.fromARGB(255, 234, 208, 131),
                                                    //     radius: 50,
                                                    //     child: image == null
                                                    //         ? Icon(Icons.person)
                                                    //         : Container(
                                                    //             child: Center(
                                                    //               child: Image.file(
                                                    //                 File(image!.path).absolute,
                                                    //                 height: 100,
                                                    //                 width: 100,
                                                    //                 fit: BoxFit.cover,
                                                    //               ),
                                                    //             ),
                                                    //           )),
                                                    GestureDetector(
                                                      onTap: () {
                                                        chooseImage1('gallery');
                                                      },
                                                      child: Stack(
                                                          children: <Widget>[
                                                            CircleAvatar(
                                                              radius: 52,
                                                              // backgroundColor: Color.fromARGB(255, 234, 208, 131),

                                                              // height: ScreenSize.size.height * 0.18,
                                                              // width: ScreenSize.size.width * 0.28,
                                                              // decoration: BoxDecoration(
                                                              //     borderRadius: BorderRadius.circular(10),
                                                              //     // color: Color.fromARGB(255, 247, 237, 231),
                                                              //     color: Colors.grey[300]),
                                                              child: selectedImage2 !=
                                                                      null
                                                                  ? CircleAvatar(
                                                                      backgroundColor:
                                                                          Colors
                                                                              .white,
                                                                      radius:
                                                                          45,
                                                                      backgroundImage:
                                                                          Image
                                                                              .file(
                                                                        selectedImage2!,
                                                                        fit: BoxFit
                                                                            .cover,
                                                                      ).image,
                                                                    )
                                                                  : Container(
                                                                      // color: Colors.red,
                                                                      child: IconButton(
                                                                          onPressed: () {
                                                                            chooseImage1('gallery');
                                                                          },
                                                                          icon: Icon(Icons.person),
                                                                          iconSize: 40,
                                                                          color: Colors.white),
                                                                    ),
                                                            ),
                                                            Positioned(
                                                              top: 70,
                                                              left: 36,
                                                              // child: Icon(Icons.add,size: 40,weight: 60,color: Colors.white,)
                                                              child:
                                                                  Image.asset(
                                                                "assets/images/profile_icon (2).png",
                                                                height: 35,
                                                                width: 35,
                                                              ),
                                                            ),
                                                          ]),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(
                                            height:
                                                ScreenSize.size.height * 0.03,
                                          ),
                                          Container(
                                            width: ScreenSize.size.width * 0.94,
                                            // color: Colors.white,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              // crossAxisAlignment:
                                              //     CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 22.0,
                                                          bottom: 10),
                                                  child: Text(
                                                    "Full Name",
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      // fontWeight:
                                                      // FontWeight.w900,
                                                      color: Colors.white,
                                                      // fontFamily: 'intil',
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            // Color: Colors.green,
                                            // width: ScreenSize
                                            //         .size.width *
                                            //     0.85,
                                            // height: ScreenSize.size.height * 0.08,
                                            child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 20.0),
                                                child: TextFormField(
                                                  controller: full_name,
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                  decoration: InputDecoration(
                                                      hintText: "shriom",
                                                      hintStyle: TextStyle(
                                                          color:
                                                              Colors.white60),
                                                      filled: true,
                                                      fillColor: Color.fromRGBO(
                                                          48, 50, 102, 1),
                                                      // suffixIcon: Icon(Icons.abc,color: Colors.red,),
                                                      prefixIcon: Icon(
                                                        Icons.person_2,
                                                        color: Colors.white60,
                                                      ),
                                                      border:
                                                          OutlineInputBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          40))
                                                      // labelText: 'Phone Number',
                                                      // border: OutlineInputBorder(
                                                      //     borderSide: BorderSide(),
                                                      // ),
                                                      ),
                                                )),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),

                      // Text(
                    ]),

                    SizedBox(
                      height: ScreenSize.size.height * 0.03,
                    ),
                    Container(
                      width: ScreenSize.size.width * 0.94,
                      // color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment:
                        //     CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 10),
                            child: Text(
                              "skills",
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight:
                                // FontWeight.w900,
                                color: Colors.white,
                                // fontFamily: 'intil',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      // Color: Colors.green,
                      // width: ScreenSize
                      //         .size.width *
                      //     0.85,
                      // height: ScreenSize.size.height * 0.08,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 25),
                          child: TextFormField(
                              controller: skills,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "c ++, htllm, css",
                                  hintStyle: TextStyle(color: Colors.white60),
                                  filled: true,
                                  fillColor: Color.fromRGBO(48, 50, 102, 1),
                                  // suffixIcon: Image.asset("assets/images/clender_icon.png"),
                                  prefixIcon: Icon(
                                    Icons.person,
                                    color: Colors.white60,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40))
                                  // labelText: 'Phone Number',
                                  // border: OutlineInputBorder(
                                  //     borderSide: BorderSide(),
                                  // ),
                                  ))),
                    ),

                    SizedBox(
                      height: ScreenSize.size.height * 0.03,
                    ),
                    Container(
                      width: ScreenSize.size.width * 0.94,
                      // color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment:
                        //     CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 10),
                            child: Text(
                              "Birth date",
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight:
                                // FontWeight.w900,
                                color: Colors.white,
                                // fontFamily: 'intil',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      // Color: Colors.green,
                      // width: ScreenSize
                      //         .size.width *
                      //     0.85,
                      // height: ScreenSize.size.height * 0.08,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 25),
                          child: TextFormField(
                            controller: birth_date,
                            //  controller: mobcontroller,

                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                                hintText: "DD/MM/YYYY",
                                hintStyle: TextStyle(color: Colors.white60),
                                filled: true,
                                fillColor: Color.fromRGBO(48, 50, 102, 1),
                                suffixIcon: Image.asset(
                                    "assets/images/clender_icon.png"),
                                prefixIcon:
                                    Image.asset("assets/images/birthdate.png"),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40))
                                // labelText: 'Phone Number',
                                // border: OutlineInputBorder(
                                //     borderSide: BorderSide(),
                                // ),
                                ),

                            readOnly: true,
                            //set it true, so that user will not able to edit text
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(1950),
                                  //DateTime.now() - not to allow to choose before today.
                                  lastDate: DateTime(2030));

                              if (pickedDate != null) {
                                print(
                                    pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                                String formattedDate =
                                    DateFormat('yyyy-MM-dd').format(pickedDate);
                                print(
                                    formattedDate); //formatted date output using intl package =>  2021-03-16
                                setState(() {
                                  dateInput.text =
                                      formattedDate; //set output date to TextField value.
                                });
                              } else {}
                            },
                          )),
                    ),

                    SizedBox(
                      height: ScreenSize.size.height * 0.03,
                    ),
                    Container(
                      width: ScreenSize.size.width * 0.94,
                      // color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment:
                        //     CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 10),
                            child: Text(
                              "Birth place",
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight:
                                // FontWeight.w900,
                                color: Colors.white,
                                // fontFamily: 'intil',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      // Color: Colors.green,
                      // width: ScreenSize
                      //         .size.width *
                      //     0.85,
                      // height: ScreenSize.size.height * 0.08,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 25),
                          child: TextFormField(
                              controller: birth_place,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "Bhopal",
                                  hintStyle: TextStyle(color: Colors.white60),
                                  filled: true,
                                  fillColor: Color.fromRGBO(48, 50, 102, 1),
                                  // suffixIcon: Image.asset("assets/images/clender_icon.png"),
                                  prefixIcon: Image.asset(
                                      "assets/images/birthplace.png"),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40))
                                  // labelText: 'Phone Number',
                                  // border: OutlineInputBorder(
                                  //     borderSide: BorderSide(),
                                  // ),
                                  ))),
                    ),

                    SizedBox(
                      height: ScreenSize.size.height * 0.03,
                    ),
                    Container(
                      width: ScreenSize.size.width * 0.94,
                      // color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment:
                        //     CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 10),
                            child: Text(
                              "previous company name",
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight:
                                // FontWeight.w900,
                                color: Colors.white,
                                // fontFamily: 'intil',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      // Color: Colors.green,
                      // width: ScreenSize
                      //         .size.width *
                      //     0.85,
                      // height: ScreenSize.size.height * 0.08,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 25),
                          child: TextFormField(
                              controller: privious_company,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText:
                                      "1901 Thornridge Cir. Shiloh, Hawaii..",
                                  hintStyle: TextStyle(color: Colors.white60),
                                  filled: true,
                                  fillColor: Color.fromRGBO(48, 50, 102, 1),
                                  // suffixIcon: Icon(Icons.abc,color: Colors.red,),
                                  prefixIcon: Icon(
                                    Icons.location_on,
                                    color: Colors.white70,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40))
                                  // labelText: 'Phone Number',
                                  // border: OutlineInputBorder(
                                  //     borderSide: BorderSide(),
                                  // ),
                                  ))),
                    ),

                    /////////////////////////////////
                    SizedBox(
                      height: ScreenSize.size.height * 0.03,
                    ),
                    Container(
                      width: ScreenSize.size.width * 0.94,
                      // color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment:
                        //     CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 10),
                            child: Text(
                              "Address",
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight:
                                // FontWeight.w900,
                                color: Colors.white,
                                // fontFamily: 'intil',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      // Color: Colors.green,
                      // width: ScreenSize
                      //         .size.width *
                      //     0.85,
                      // height: ScreenSize.size.height * 0.08,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 25),
                          child: TextFormField(
                              controller: address,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText:
                                      "1901 Thornridge Cir. Shiloh, Hawaii..",
                                  hintStyle: TextStyle(color: Colors.white60),
                                  filled: true,
                                  fillColor: Color.fromRGBO(48, 50, 102, 1),
                                  // suffixIcon: Icon(Icons.abc,color: Colors.red,),
                                  prefixIcon: Icon(
                                    Icons.location_on,
                                    color: Colors.white70,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40))
                                  // labelText: 'Phone Number',
                                  // border: OutlineInputBorder(
                                  //     borderSide: BorderSide(),
                                  // ),
                                  ))),
                    ),

                    SizedBox(
                      height: ScreenSize.size.height * 0.03,
                    ),
                    Container(
                      width: ScreenSize.size.width * 0.94,
                      // color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment:
                        //     CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 10),
                            child: Text(
                              "Home",
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight:
                                // FontWeight.w900,
                                color: Colors.white,
                                // fontFamily: 'intil',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      // Color: Colors.green,
                      // width: ScreenSize
                      //         .size.width *
                      //     0.85,
                      // height: ScreenSize.size.height * 0.08,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 25),
                          child: TextFormField(
                              controller: Home,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "Indore",
                                  hintStyle: TextStyle(color: Colors.white60),
                                  filled: true,
                                  fillColor: Color.fromRGBO(48, 50, 102, 1),
                                  // suffixIcon: Icon(Icons.abc,color: Colors.red,),
                                  prefixIcon: Image.asset(
                                      "assets/images/home_editpro.png"),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40))
                                  // labelText: 'Phone Number',
                                  // border: OutlineInputBorder(
                                  //     borderSide: BorderSide(),
                                  // ),
                                  ))),
                    ),
                    SizedBox(
                      height: ScreenSize.size.height * 0.03,
                    ),
                    Container(
                      width: ScreenSize.size.width * 0.94,
                      // color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment:
                        //     CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 10),
                            child: Text(
                              "Mobile Number",
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight:
                                // FontWeight.w900,
                                color: Colors.white,
                                // fontFamily: 'intil',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      // Color: Colors.green,
                      // width: ScreenSize
                      //         .size.width *
                      //     0.85,
                      // height: ScreenSize.size.height * 0.08,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 25),
                          child: TextFormField(
                              controller: mobno,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "8839039838",
                                  hintStyle: TextStyle(color: Colors.white60),
                                  filled: true,
                                  fillColor: Color.fromRGBO(48, 50, 102, 1),
                                  // suffixIcon: Icon(Icons.abc,color: Colors.red,),
                                  prefixIcon: Image.asset(
                                      "assets/images/mobileno_icon.png"),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40))
                                  // labelText: 'Phone Number',
                                  // border: OutlineInputBorder(
                                  //     borderSide: BorderSide(),
                                  // ),
                                  ))),
                    ),
                    SizedBox(
                      height: ScreenSize.size.height * 0.03,
                    ),
                    Container(
                      width: ScreenSize.size.width * 0.94,
                      // color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment:
                        //     CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 10),
                            child: Text(
                              "Email ID",
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight:
                                // FontWeight.w900,
                                color: Colors.white,
                                // fontFamily: 'intil',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      // Color: Colors.green,
                      // width: ScreenSize
                      //         .size.width *
                      //     0.85,
                      // height: ScreenSize.size.height * 0.08,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 25),
                          child: TextFormField(
                              controller: Email_id,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "rv6504064@gmail.com",
                                  hintStyle: TextStyle(color: Colors.white60),
                                  filled: true,
                                  fillColor: Color.fromRGBO(48, 50, 102, 1),
                                  // suffixIcon: Icon(Icons.abc,color: Colors.red,),
                                  prefixIcon: Image.asset(
                                      "assets/images/Email_ICON.png"),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40))
                                  // labelText: 'Phone Number',
                                  // border: OutlineInputBorder(
                                  //     borderSide: BorderSide(),
                                  // ),
                                  ))),
                    ),
                    SizedBox(
                      height: ScreenSize.size.height * 0.03,
                    ),
                    Container(
                      width: ScreenSize.size.width * 0.94,
                      // color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment:
                        //     CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 10),
                            child: Text(
                              "Uploade facebook URL",
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight:
                                // FontWeight.w900,
                                color: Colors.white,
                                // fontFamily: 'intil',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      // Color: Colors.green,
                      // width: ScreenSize
                      //         .size.width *
                      //     0.85,
                      // height: ScreenSize.size.height * 0.08,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 25),
                          child: TextFormField(

                              //  controller: mobcontroller,

                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "rv6504064@gmail.com",
                                  hintStyle: TextStyle(color: Colors.white60),
                                  filled: true,
                                  fillColor: Color.fromRGBO(48, 50, 102, 1),
                                  // suffixIcon: Icon(Icons.abc,color: Colors.red,),
                                  prefixIcon: Icon(
                                    Icons.facebook,
                                    color: Colors.white,
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40))
                                  // labelText: 'Phone Number',
                                  // border: OutlineInputBorder(
                                  //     borderSide: BorderSide(),
                                  // ),
                                  ))),
                    ),
                    SizedBox(
                      height: ScreenSize.size.height * 0.03,
                    ),
                    Container(
                      width: ScreenSize.size.width * 0.94,
                      // color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment:
                        //     CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 10),
                            child: Text(
                              "Uploade whatsaap URL",
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight:
                                // FontWeight.w900,
                                color: Colors.white,
                                // fontFamily: 'intil',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      // Color: Colors.green,
                      // width: ScreenSize
                      //         .size.width *
                      //     0.85,
                      // height: ScreenSize.size.height * 0.08,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 25),
                          child: TextFormField(
                              //  controller: mobcontroller,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "rv6504064@gmail.com",
                                  hintStyle: TextStyle(color: Colors.white60),
                                  filled: true,
                                  fillColor: Color.fromRGBO(48, 50, 102, 1),
                                  // suffixIcon: Icon(Icons.abc,color: Colors.red,),
                                  prefixIcon:
                                      Image.asset("assets/images/whatsapp.png"),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40))
                                  // labelText: 'Phone Number',
                                  // border: OutlineInputBorder(
                                  //     borderSide: BorderSide(),
                                  // ),
                                  ))),
                    ),
                    SizedBox(
                      height: ScreenSize.size.height * 0.03,
                    ),
                    Container(
                      width: ScreenSize.size.width * 0.94,
                      // color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment:
                        //     CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 10),
                            child: Text(
                              "Uploade twitter URL",
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight:
                                // FontWeight.w900,
                                color: Colors.white,
                                // fontFamily: 'intil',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      // Color: Colors.green,
                      // width: ScreenSize
                      //         .size.width *
                      //     0.85,
                      // height: ScreenSize.size.height * 0.08,
                      child: Padding(
                          padding: const EdgeInsets.only(left: 20.0, right: 25),
                          child: TextFormField(

                              //  controller: mobcontroller,

                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  hintText: "rv6504064@gmail.com",
                                  hintStyle: TextStyle(color: Colors.white60),
                                  filled: true,
                                  fillColor: Color.fromRGBO(48, 50, 102, 1),
                                  // suffixIcon: Icon(Icons.abc,color: Colors.red,),
                                  prefixIcon:
                                      Image.asset("assets/images/twitter.png"),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(40))
                                  // labelText: 'Phone Number',
                                  // border: OutlineInputBorder(
                                  //     borderSide: BorderSide(),
                                  // ),
                                  ))),
                    ),

                    SizedBox(
                      height: ScreenSize.size.height * 0.03,
                    ),
                    Container(
                      width: ScreenSize.size.width * 0.94,
                      // color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment:
                        //     CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, bottom: 10),
                            child: Text(
                              "About Us",
                              style: TextStyle(
                                fontSize: 18,
                                // fontWeight:
                                // FontWeight.w900,
                                color: Colors.white,
                                // fontFamily: 'intil',
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      // Color: Colors.green,
                      // width: ScreenSize
                      //         .size.width *
                      //     0.85,
                      // height: ScreenSize.size.height * 0.08,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 25),
                        child: Column(
                          children: [
                            TextFormField(
                              controller: about,
                              style: TextStyle(color: Colors.white),
                              toolbarOptions: ToolbarOptions(
                                  copy: true,
                                  paste: true,
                                  cut: true,
                                  selectAll: true),
                              // controller:
                              //     _controller,

                              // controller: _confirmpassword,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter description';
                                }
                                return null;
                              },
                              // minLines: 2,
                              maxLines: 4,

                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Color.fromRGBO(48, 50, 102, 1),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(

                                        // color: Color.fromARGB(255, 175, 0, 20)
                                        )),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        // color:
                                        //     Color.fromARGB(255, 175, 0, 20)

                                        )),
                                disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(
                                        // color:
                                        //     Color.fromARGB(255, 175, 0, 3)

                                        )),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide: BorderSide(

                                        // color:
                                        //     Color.fromARGB(255, 175, 0, 0)

                                        )),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Color(0xff0060AF))),
                                focusedBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xff0060AF))),
                                hintStyle: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontFamily: 'Inter',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    SizedBox(
                      height: ScreenSize.size.height * 0.04,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          // color: Colors.amber,
                          // height: ScreenSize.size.height * 0.20,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                  height: ScreenSize.size.height * 0.08,
                                  width: ScreenSize.size.width * 0.80,
                                  child: OutlinedButton(
                                    onPressed: () {
                                      // ccesfuly();
                                      run();

                                      //  showDialog(
                                      //                 useRootNavigator: true,
                                      //                 context: context,
                                      //                 builder: (BuildContext context) {
                                      //                   return ccesfuly();
                                      //                 });
                                    },
                                    child: Text(
                                      'Update',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    style: OutlinedButton.styleFrom(
                                      shape: StadiumBorder(),
                                      backgroundColor: Color(0xff09618E),
                                    ),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: ScreenSize.size.height * 0.01,
                    ),

                    SizedBox(
                      height: ScreenSize.size.height * 0.01,
                    ),
                  ],
                ),
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
              )
            ],
          ),
        ),
      ),
    ));
  }

  // void validate() {
  //   full_name.text.toString();
  //   skills.text.toString();
  //   birth_date.text.toString();
  //   birth_place.text.toString();
  //   privious_company.text.toString();
  //   address.text.toString();
  //   Home.text.toString();
  //   mobno.text.toString();
  //   Email_id.text.toString();
  //   about.text.toString();
  // }

  Future<void> run() async {
    Get.to(Profile());
    if (formkey.currentState!.validate()) {
      void validate() {
        full_name.text.toString();
        skills.text.toString();
        birth_date.text.toString();
        birth_place.text.toString();
        privious_company.text.toString();
        address.text.toString();
        Home.text.toString();
        mobno.text.toString();
        Email_id.text.toString();
        about.text.toString();
      }
    } else {
      print("error");
    }
    return null;
  }

  MediaType(String s, String t) {}
}
