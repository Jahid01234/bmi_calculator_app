import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {

  final String hintTex;
  final TextEditingController controller;

  const MyTextField({super.key, required this.controller, required this.hintTex,});

  @override
  Widget build(BuildContext context) {
    return Container(
          height: 50,
          width: 120,
          decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(0),
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade500,
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(4, 4)
                ),
                 BoxShadow(
                    color: Colors.white,
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(-4, -4)
                )
              ]
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                hintText:  hintTex,
                border:InputBorder.none,

              ),
            ),
          ),
    );
  }
}

