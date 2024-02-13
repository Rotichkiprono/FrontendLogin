import 'package:flutter/material.dart';
import 'package:flutter_application_1/configs/constants.dart';
import 'package:flutter_application_1/views/customtext.dart';

class customButton extends StatelessWidget {
  final buttonLabel;

  const customButton({
    super.key,
    required this.userNameController,
    required this.buttonLabel,
    required Null Function() onPressed,
  });

  final TextEditingController userNameController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: customtitleText(
        label: buttonLabel,
        labelColor: primaryColor,
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: appbartextColor,
        elevation: 10,
        padding: const EdgeInsets.all(12),
      ),
    );
  }
}
