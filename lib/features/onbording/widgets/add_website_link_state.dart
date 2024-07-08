 import 'package:flutter/material.dart';

Padding addYourWebsiteLinkState({required TextEditingController controller}) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, right: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Add your website link",
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
          const Text(
            "This is the website where you would like to accept payments",
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 18,
                fontWeight: FontWeight.w400,
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
                  hintText: "https://",
                  hintStyle: const TextStyle(
                      color: Color(0xffA0A0A0),
                      fontFamily: "Montsrrat",
                      fontSize: 16,
                      fontWeight: FontWeight.w400),
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