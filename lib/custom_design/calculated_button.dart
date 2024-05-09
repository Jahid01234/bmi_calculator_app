import 'package:flutter/material.dart';

class MyButton extends StatefulWidget {
  final VoidCallback onPressed;
  const MyButton({super.key, required this.onPressed});


  @override
  State<MyButton> createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,// for statefull widget user(widegt.onPressed)
      child: Container(
        height: 50,
        width: 250,
        decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade500,
                  spreadRadius: 2,
                  blurRadius: 10,
                  offset: Offset(4, 4)),
              BoxShadow(
                  color: Colors.white,
                  spreadRadius: 1,
                  blurRadius: 10,
                  offset: Offset(-4, -4))
            ]),
         child: Center(
           child: Text("Calculated"),
        ),
      ),
    );
  }

}
