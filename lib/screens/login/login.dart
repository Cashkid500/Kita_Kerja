import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kita_kerja/screens/navigation/navigation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  bool _isSecurePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset("assets/images/Login.png"),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Text(
                'Login',
                style: GoogleFonts.montserrat(
                  textStyle: const TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    color: Colors.black,
                  ),
                ),
              ),
            ),

            
            const SizedBox(height: 37),

            // Email Text
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

            
            const SizedBox(height: 10),

            // Email TextFormField
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                width: 297,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2, color: const Color(0xff0948EA)),
                ),
                child: TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: 'Email',
                    border: InputBorder.none,
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    suffixIcon: Icon(
                      Icons.alternate_email,
                      color: Color(0xff0948EA),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Password Text
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

            const SizedBox(height: 10),

            // Password TextFormField
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Container(
                width: 297,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 2, color: const Color(0xff0948EA)), // Add border
                ),
                child: TextFormField(
                  obscureText: _isSecurePassword,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 15),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _isSecurePassword = !_isSecurePassword;
                        });
                      },
                      icon: _isSecurePassword
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                      color: const Color(0xff0948EA),
                    ),
                  ),
                ),
              ),
            ),

            
            const SizedBox(height: 50.0),

            // Submit Button
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          const NavigationScreen()));
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

            
            const SizedBox(height: 20.0),

            // Forgot Password
            TextButton(
              onPressed: () {},
              child: const Center(
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                    color: Color(0xff4D7EFA),
                    decoration: TextDecoration.none,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
