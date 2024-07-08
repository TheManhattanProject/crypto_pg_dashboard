import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Padding confirmPanNameState({required TextEditingController userNameController}) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, right: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Confirm your name is",
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
          Text(
            "\"${userNameController.text}\" ?",
            style: const TextStyle(
                fontFamily: "Montserrat",
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
          const Text(
            "We've verified the name using your PAN number. You cannot make any changes to your PAN details after you confirm",
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black45),
          ),
        ],
      ),
    );
  }
