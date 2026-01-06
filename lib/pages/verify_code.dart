import 'package:fitflow/components/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyCodePage extends StatelessWidget {
  const VerifyCodePage({super.key});

  void register() {}

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
          Positioned(
            top: 30,
            right: 20,
            child: SvgPicture.asset('icons/close.svg', width: 24, height: 24),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Login Text
                Text(
                  'Create Account',
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 100),

                // Five Code box
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 5; i++) ...[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.13,
                        height: MediaQuery.of(context).size.width * 0.13,
                        child: TextField(
                          maxLength: 1, // Limit input to one character
                          textAlign: TextAlign.center, // Center the input text
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.primary,
                            fontSize: 24,
                          ),
                          decoration: InputDecoration(
                            counterText: '', // Remove the character counter
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor:
                                Colors.transparent, // Transparent background
                          ),
                          keyboardType:
                              TextInputType.number, // Numeric keyboard
                          onChanged: (value) {
                            if (value.length == 1) {
                              // Automatically move to the next box if needed
                              FocusScope.of(context).nextFocus();
                            }
                          },
                        ),
                      ),
                      if (i < 4) // Add a gap after each box except the last one
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.02,
                        ),
                    ],
                  ],
                ),
                SizedBox(height: 20),

                // Next Button
                CustomButton(
                  onPressed: register,
                  text: 'Next',
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
                      text: 'Resend Verification Code',
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
