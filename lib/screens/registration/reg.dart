import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kita_kerja/screens/dashboard/dashboard.dart';

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
          const SizedBox(height: 30,),
          Image.asset("assets/images/Reg.png"),

          const SizedBox(height: 20), 
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Registration',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 36,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          // Email Text
          const SizedBox(height: 37),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Email',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          // Email TextFormField
          const SizedBox(height:10), 
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              width: 297,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    width: 2, color: const Color(0xff0948EA)),
              ),
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
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
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Password',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),

          // Password TextFormField
          const SizedBox(height:10), 
          
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              width: 297,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    width: 2, color: const Color(0xff0948EA)),
              ),
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
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
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text(
              'Re-enter Password',
              style: GoogleFonts.montserrat(
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          
          // Re-enter Password TextFormField
          const SizedBox(height:10), 
          
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Container(
              width: 297,
              height: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    width: 2, color: const Color(0xff0948EA)),
              ),
              child: TextFormField(
                controller: emailController,
                decoration: const InputDecoration(
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
           const SizedBox(height: 50.0),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => const DashboardScreen()));
              },
              child: Container(
                width: 297,
                height: 55,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
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
