import 'package:flutter/material.dart';
import 'package:gold_comparsion/home/home_page.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController _otpController = TextEditingController();

  void _verifyOtp() {
    final otp = _otpController.text;
    // Add your OTP verification logic here
    if (otp.length == 6) {
      // Simulate OTP verification
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('OTP Verified')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Invalid OTP')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text('Verify OTP'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/golden_logo.png',height: 200,width: 250),
            SizedBox(height: 16.0),
            Text(
              'Enter the OTP sent to your mobile',
              style: TextStyle(fontSize: 18.0,color: Colors.white),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _otpController,
              keyboardType: TextInputType.number,
              maxLength: 6,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                counterStyle: TextStyle(
                  color: Colors.white,
                ),
                border: OutlineInputBorder(
                ),
                labelText: 'OTP',labelStyle: TextStyle(
                color: Colors.black
              ),
              ),
            ),
            SizedBox(height: 15.0),
            ElevatedButton(
              onPressed: _verifyOtp,
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                maximumSize: Size(580, 100),
              ),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Text('Verify',style: TextStyle(
                  color: Colors.black,
                  fontSize: 15
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _otpController.dispose();
    super.dispose();
  }
}
