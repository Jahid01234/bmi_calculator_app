import 'package:flutter/material.dart';

class ImageContainer extends StatefulWidget {
  const ImageContainer({super.key});

  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          InkWell(
            onTap: (){
              setState(() {
                _selected=0 ;
              });
            },
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: _selected ==0 ?Colors.red:Colors.white ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(4, 4)),
                    const BoxShadow(
                        color: Colors.white,
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(-4, -4))
                  ]),
              child:Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  height: 70,
                  width: 70,
                  child: CircleAvatar(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "assets/images/img_1.png",
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              ) ,
            ),
          ),
          InkWell(
            onTap: (){
              setState(() {
                _selected =1;
              });
            },
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: _selected==1 ?Colors.red:Colors.white ),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(4, 4)),
                    const BoxShadow(
                        color: Colors.white,
                        spreadRadius: 1,
                        blurRadius: 10,
                        offset: Offset(-4, -4))
                  ]),
              child:Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  height: 70,
                  width: 70,
                  child: CircleAvatar(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          "assets/images/img.png",
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              ) ,
            ),
          ),

        ],
      ),



    );
  }
}
