import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/views/customButton.dart';
import 'package:flutter_application_1/views/customtext.dart';
import 'package:flutter_application_1/views/customtextfield.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController EmailController = TextEditingController();
    TextEditingController NameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController PhoneController = TextEditingController();
    TextEditingController userNameController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        backgroundColor: primaryColor,
        foregroundColor: appbartextColor,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50, 30, 50, 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/download.png"),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  customtitleText(
                      label: "SignUp Screen",
                      labelColor: primaryColor,
                      labelfontSize: 30)
                ],
              ),
              const SizedBox(height: 10),
              const customtitleText(label: "Email "),
              customTextField(
                controller: EmailController,
                icon: Icons.email,
                hint: "G-mail",
              ),
              const customtitleText(label: "First Name "),
              customTextField(
                controller: NameController,
                icon: Icons.person,
              ),
              const customtitleText(label: "Second Name "),
              customTextField(
                controller: NameController,
                icon: Icons.person,
              ),
              const customtitleText(label: "Phone Number "),
              customTextField(
                controller: PhoneController,
                icon: Icons.phone,
              ),
              const customtitleText(label: "Password"),
              customTextField(
                controller: passwordController,
                icon: Icons.lock,
                hideText: true,
                isPassword: true,
              ),
              const customtitleText(label: " Confirm Password"),
              customTextField(
                controller: passwordController,
                icon: Icons.lock,
                hideText: true,
                isPassword: true,
              ),
              const SizedBox(
                height: 30,
              ),
              customButton(
                userNameController: userNameController,
                buttonLabel: "Submit",
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
