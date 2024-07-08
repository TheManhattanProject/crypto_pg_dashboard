 import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Padding addEmailToReceiverAccountUpdatedState({required TextEditingController controller}) {
    return Padding(
      padding: const EdgeInsets.only(left: 60, right: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Add your email address to receive account updates",
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: Colors.black),
          ),
          const SizedBox(
            height: 28,
          ),
          Container(
              height: 54,
              width: double.maxFinite,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      controller.text,
                      style: const TextStyle(
                          fontFamily: "Montserrat",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black26),
                    ),
                    const Icon(
                      Icons.check,
                      color: Colors.green,
                      size: 18,
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }