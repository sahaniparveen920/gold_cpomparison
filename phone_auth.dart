import 'package:flutter/material.dart';
import 'package:gold_comparsion/otpscreen.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController countrycode= TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    countrycode.text="+91";
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(left: 25, right: 25,top: 100),
            alignment: Alignment.center,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/golden_logo.png',height: 250,width: 250),
                  SizedBox(height: 10,),

                  Text('Phone Verification',
                    style: TextStyle( fontSize: 22,fontWeight: FontWeight.bold,color: Colors.white),
                  ),

                  SizedBox(
                    height: 16,
                  ),
                  Text('We need to register your phone  before getting started !',
                    style: TextStyle(fontSize: 16,color: Colors.white),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 30,),
                  Container(
                    height: 55,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 1,color: Colors.white),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      children: [
                        SizedBox(width: 20,),
                        SizedBox(
                          width: 40,
                          child: TextField(
                            controller: countrycode,
                            decoration: InputDecoration(
                                border: InputBorder.none),
                          ),
                        ),
                        SizedBox(width: 2,),
                        Text("|", style: TextStyle(
                          fontSize: 33, color: Colors.grey,
                        ),),
                        SizedBox(width: 10,),
                        Expanded(child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,hintText: "Phone",hintStyle: TextStyle(color: Colors.grey)),
                        )),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  SizedBox(
                    height: 45,
                    width: double.infinity,
                    child: ElevatedButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen()));
                    }, child: Text('Send the code',style: TextStyle(color: Colors.black),),
                      style: ElevatedButton.styleFrom(primary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
