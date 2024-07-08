import 'package:flutter/material.dart';

Padding mobileOrEmailState({required bool isPhoneNumber,required controller}) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, right: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (!isPhoneNumber)
            const Text(
              "What's your mobile number?",
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
            )
          else
            const Text(
              "What's your email address?",
              style: TextStyle(
                  fontFamily: "Montserrat",
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Colors.black),
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
                  prefix: !isPhoneNumber ? const Text("+91 ") : null,
                  prefixStyle: const TextStyle(
                      color: Color(0xff161616),
                      fontSize: 18,
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
