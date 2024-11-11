import 'package:flutter/material.dart';
import 'package:xorbx/constants/app_style.dart';
import 'package:xorbx/constants/image_constants.dart';
import 'package:xorbx/widgets/custom_text_field.dart';
import 'package:xorbx/widgets/divider_with_text.dart';
import 'package:xorbx/widgets/social_button.dart';

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF102A43),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            Image.asset(
              "assets/images/app.png",
              height: scale.getScaledHeight(40),
              width: scale.getScaledHeight(82),
            ),
            const SizedBox(height: 30),
            Text(
              "Sign In",
              style: AppStyle.style3.copyWith(
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 30),
            SocialButton(
              image: Image.asset(ImageConstants.google),
              text: 'Continue with Google',
            ),
            const SizedBox(height: 10),
            SocialButton(
              image: Image.asset(ImageConstants.apple),
              text: 'Continue with Apple',
            ),
            const DividerWithText(text: 'OR'),
            CustomTextField(
                onChanged: (value) => {}, hintText: 'Username / ID'),
            CustomTextField(onChanged: (value) => {}, hintText: 'Email'),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1A3A5A),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                      children: [
                        Icon(Icons.flag, color: Colors.white),
                        SizedBox(width: 5),
                        Text(
                          '+1', // Static code, replace with country picker if needed
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 3,
                  child: CustomTextField(
                      onChanged: (value) => {}, hintText: 'Phone'),
                ),
              ],
            ),
            CustomDropdownField(
              hintText: 'Languages',
              items: ['English', 'Spanish', 'French'], // Add more if needed
            ),
            CustomTextField(
                onChanged: (value) => {},
                hintText: 'Password',
                isPassword: true),
            CustomTextField(
                onChanged: (value) => {},
                hintText: 'Confirm Password',
                isPassword: true),
            const SizedBox(height: 10),
            TermsAndConditionsCheckbox(),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF5E97E0),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Sign Up',
                style: TextStyle(fontSize: 18),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "Already have an account? Sign In",
              style: TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}

class CustomDropdownField extends StatelessWidget {
  final String hintText;
  final List<String> items;

  CustomDropdownField({required this.hintText, required this.items});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: const Color(0xFF1A3A5A),
          borderRadius: BorderRadius.circular(10),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            dropdownColor: const Color(0xFF1A3A5A),
            hint: Text(
              hintText,
              style: const TextStyle(color: Colors.white70),
            ),
            items: items.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item, style: const TextStyle(color: Colors.white)),
              );
            }).toList(),
            onChanged: (value) {
              // Add functionality if needed
            },
          ),
        ),
      ),
    );
  }
}

class TermsAndConditionsCheckbox extends StatefulWidget {
  @override
  _TermsAndConditionsCheckboxState createState() =>
      _TermsAndConditionsCheckboxState();
}

class _TermsAndConditionsCheckboxState
    extends State<TermsAndConditionsCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
          activeColor: Colors.white,
          checkColor: Colors.blue,
          fillColor: MaterialStateProperty.all(const Color(0xFF1A3A5A)),
        ),
        const Expanded(
          child: Text(
            'By continuing you agree to our Terms and Privacy Policy.',
            style: TextStyle(color: Colors.white70),
          ),
        ),
      ],
    );
  }
}
