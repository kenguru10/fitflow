import 'package:fitflow/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  void login() {
    // Implement login logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Background color
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: Image.asset(
              'images/fitflow_logo_512.png',
              width: 48,
              height: 48,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Login Text
                Text(
                  'Login',
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 100),

                // Phone Number Input
                TextField(
                  keyboardType: TextInputType.phone,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Theme.of(context).colorScheme.primary,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Send Verified Code Button
                CustomButton(
                  onPressed: login,
                  text: 'Send Verified Code',
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                ),
                SizedBox(height: 40),

                // Create Account Link
                GestureDetector(
                  onTap: () {
                    // Navigate to Create Account screen
                  },
                  child: RichText(
                    text: TextSpan(
                      text: 'No Account? Create one',
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
