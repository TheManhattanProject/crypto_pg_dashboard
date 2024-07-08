 import 'package:flutter/material.dart';

Padding reviewTile(
      {required String title,
      required String value,
      required bool isClickable,
      required void Function() onTap}) {
    return Padding(
      padding: const EdgeInsets.only(right: 70, top: 24, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
                fontFamily: "Montserrat",
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black45),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  value,
                  style: const TextStyle(
                      fontFamily: "Montserrat",
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                ),
                if (isClickable)
                  GestureDetector(
                      onTap: onTap,
                      child: const Icon(
                        Icons.edit,
                        color: Color.fromARGB(255, 33, 100, 243),
                        size: 20,
                      ))
              ],
            ),
          ),
        ],
      ),
    );
  }
