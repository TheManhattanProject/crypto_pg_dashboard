import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ErrorBoxAuth extends StatelessWidget {
  final String errorMessage;
  final bool showErrorMessage;
  final double height;
  final double width;
  const ErrorBoxAuth({
    Key? key,
    required this.errorMessage,
    required this.showErrorMessage,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      constraints: BoxConstraints(
        minHeight: height,
      ),
      child: showErrorMessage
          ? Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  errorMessage,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Color(0xffFE0000),
                    fontSize: 16,
                    fontFamily: "Montserrat",
                  ),
                ),
              ),
            )
          : Container(),
    );
  }
}
