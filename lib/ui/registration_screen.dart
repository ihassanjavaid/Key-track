import 'package:flutter/material.dart';
import 'package:keytrack/ui/main_screen.dart';

class RegistrationScreen extends StatelessWidget {
  static const String id = 'registration_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            child: Image.asset('assets/images/logo.png'),
          ),
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextFormField(
              cursorColor: Colors.grey[400],
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[400]),
                  ),
                  labelStyle: TextStyle(color: Colors.grey[400]),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[400]),
                  ),
                  fillColor: Colors.grey[400],
                  filled: true),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              width: double.infinity,
              height: 60,
              child: OutlineButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.pushNamed(context, MainScreen.id);
                },
                child: Text(
                  'Send Verification Code',
                  style: TextStyle(
                      fontFamily: 'CM Sans Serif',
                      fontSize: 16,
                      color: Colors.black87),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 28,
          ),
          Text(
            'Privacy Policy - Terms and Conditions',
            style: TextStyle(
                fontFamily: 'CM Sans Serif',
                fontSize: 14,
                color: Colors.grey),
          )
        ],
      ),
    );
  }
}
