import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../dashboard/dashboard.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30,),
          Image.asset("assets/images/Reg.png"),

          SizedBox(height: 20), // Add some space between the image and the text
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Registration',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          // Email Text
          SizedBox(height: 37),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Email',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          // Email TextFormField
          SizedBox(height:10), // Add some space between the "Email" text and the TextFormField
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Container(
              width: 297,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    width: 2, color: Color(0xff0948EA)), // Add border
              ),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email...',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  suffixIcon: Icon(
                    Icons.alternate_email,
                    color: Color(0xff0948EA),
                  ),
                ),
              ),
            ),
          ),

          // Password Text
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Password',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          // Password TextFormField
          SizedBox(height:10), // Add some space between the "Email" text and the TextFormField
          
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Container(
              width: 297,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    width: 2, color: Color(0xff0948EA)), // Add border
              ),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Password...',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_sharp,
                    color: Color(0xff0948EA),
                  ),
                ),
              ),
            ),
          ),

          //Re-enter Password Text
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text(
              'Re-enter Password',
              style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          
          // Re-enter Password TextFormField
          SizedBox(height:10), // Add some space between the "Email" text and the TextFormField
          
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: Container(
              width: 297,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    width: 2, color: Color(0xff0948EA)), // Add border
              ),
              child: TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Re-enter Password...',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 15),
                  suffixIcon: Icon(
                    Icons.remove_red_eye_sharp,
                    color: Color(0xff0948EA),
                  ),
                ),
              ),
            ),
          ),
          
          // Submit Button
          SizedBox(height: 50.0),
          Padding(
            padding: EdgeInsets.only(left: 25),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => DashboardScreen()));
              },
              child: Container(
                width: 297,
                height: 55,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  "Submit",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
