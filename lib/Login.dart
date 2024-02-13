import 'package:flutter/material.dart';
import 'package:flutter_application_1/SignUp.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/views/customButton.dart';
import 'package:flutter_application_1/views/customtext.dart';
import 'package:flutter_application_1/views/customtextfield.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
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
                      label: "Login Screen",
                      labelColor: primaryColor,
                      labelfontSize: 30)
                ],
              ),
              const SizedBox(height: 10),
              const customtitleText(label: "Username"),
              customTextField(
                controller: userNameController,
                icon: Icons.person,
                hint: "Username or Number",
              ),
              const customtitleText(label: "Password"),
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
                buttonLabel: "LogIn",
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const SignUp()));
                },
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  customtitleText(label: "Forgot Password?"),
                  SizedBox(
                    width: 10,
                  ),
                  customtitleText(
                    label: "Recover",
                    labelColor: primaryColor,
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFFFFFFFF),
                  onPrimary: Color(0xFFA50000),
                  elevation: 10,
                ),
                child: const Text("Sign Up"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUp()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
