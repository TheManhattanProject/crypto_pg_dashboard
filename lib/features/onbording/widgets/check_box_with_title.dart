import 'package:flutter/material.dart';

class CheckBoxWithTitle extends StatefulWidget {
  CheckBoxWithTitle({super.key, required this.title, required this.onChanged});
  final String title;
  Function(bool value) onChanged;
  @override
  State<CheckBoxWithTitle> createState() => _CheckBoxWithTitleState();
}

class _CheckBoxWithTitleState extends State<CheckBoxWithTitle> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        children: [
          Container(
            height: 22,
            width: 22,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black45, width: 2),
                borderRadius: BorderRadius.circular(4)),
            child: Checkbox(
              value: value,
              onChanged: (val) {
                setState(() {
                  value = val!;
                  widget.onChanged(val);
                });
              },
              checkColor: Colors.blue,
              fillColor: const WidgetStatePropertyAll(Colors.transparent),
              splashRadius: 0,
              side: const BorderSide(color: Colors.transparent),
            ),
          ),
          const SizedBox(
            width: 14,
          ),
          Text(
            widget.title,
            style: const TextStyle(
                color: Color(0xff161616),
                fontFamily: "Montserrat",
                fontSize: 12,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
