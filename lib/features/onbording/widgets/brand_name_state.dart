import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Padding brandNameState({required TextEditingController controller}) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, right: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "What's your brand name ?",
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
          const Text(
            "This is the business name that your customers recognize",
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black45),
          ),
          const SizedBox(
            height: 28,
          ),
          SizedBox(
            height: 54,
            width: double.maxFinite,
            child: TextField(
              controller: controller,
              cursorColor: Colors.blueAccent,
              cursorHeight: 24,
              keyboardType: TextInputType.emailAddress,
              textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.blueAccent)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: Colors.black45)),
                  fillColor: const Color.fromARGB(255, 255, 251, 251),
                  hoverColor: const Color(0xffF8F9FE),
                  filled: true),
            ),
          ),
        ],
      ),
    );
  }
