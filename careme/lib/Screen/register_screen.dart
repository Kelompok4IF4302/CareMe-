// ignore_for_file: prefer_const_constructors
import 'package:careme/Screen/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: camel_case_types
class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

// ignore: camel_case_types
class _registerState extends State<register> {
  bool firstValue = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 200
                ),
                child: IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                       icon: Icon(Icons.arrow_back)),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        "assets/image/logo.png",
                        width: 300,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Center(
                      child: Text(
                        "Care Me",
                        style: GoogleFonts.inter(
                            fontSize: 40,
                            color: Color(0xff36622B),
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Username",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 2, color: Color(0xff36622B)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Nama Lengkap",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 2, color: Color(0xff36622B)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Tanggal Lahir",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 2, color: Color(0xff36622B)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "No Telepon",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 2, color: Color(0xff36622B)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "NIK",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 2, color: Color(0xff36622B)),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 30, right: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide:
                                BorderSide(width: 2, color: Color(0xff36622B)),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Row(
                  children: [
                    Checkbox(
                      value: firstValue,
                      checkColor: Colors.white,
                      activeColor: Color(0xff36622B),
                      onChanged: (bool? value1){
                        if (value1 != null){
                          setState((){
                            firstValue = value1;
                        });
                        }
                      },
                    ),
                    Text("Menyetujui seluruh persyaratan dan ketentuan", style: TextStyle(fontSize: 20),)
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                margin: EdgeInsets.only(left: 30, right: 30),
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Route route = MaterialPageRoute(builder: (context) => loginscreen());
                    Navigator.push(context, route);
                  },
                  child: Text(
                    "Log in",
                    style: GoogleFonts.inter(
                        fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: Color(0xff36622B),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )
                    ),
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}

