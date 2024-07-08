 import 'package:flutter/material.dart';

Padding otpState({required TextEditingController inputController,required TextEditingController otpController}) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, right: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enter the OTP sent to ${inputController.text}",
            style: const TextStyle(
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
              controller: otpController,
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
          const SizedBox(
            height: 12,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {},
              child: const Text(
                "Resend OTP",
                style: TextStyle(
                    fontFamily: "Montserrat",
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.blue),
              ),
            ),
          ),
        ],
      ),
    );
  }

  