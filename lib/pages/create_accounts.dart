import 'package:fitflow/components/custom_button.dart';
import 'package:fitflow/components/custom_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({super.key});

  void create_account() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(
        context,
      ).colorScheme.background, // Background colorr
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Create Account Text
                Text(
                  'Create Account',
                  style: GoogleFonts.inter(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                // Full Name
                CustomInput(
                  hintText: 'Full Name',
                  hintStyle: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
                SizedBox(height: 20),
                // Display Name
                CustomInput(
                  hintText: 'Display Name',
                  hintStyle: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
                SizedBox(height: 20),
                // Display Name
                CustomInput(
                  keyboardType: TextInputType.emailAddress,
                  hintText: 'Email Address',
                  hintStyle: TextStyle(
                    color: Theme.of(context).colorScheme.tertiary,
                  ),
                ),
                SizedBox(height: 20),
                CustomButton(
                  onPressed: create_account,
                  text: 'Create',
                  padding: EdgeInsets.symmetric(vertical: 20),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
