import 'package:cvshowcase/constants.dart';
import 'package:flutter/material.dart';

class MyComponent extends StatefulWidget {
  MyComponent({Key? key, required this.title, required this.content})
      : super(key: key);

  String title;
  String content;

  @override
  State<MyComponent> createState() => _MyComponentState();
}

class _MyComponentState extends State<MyComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title,
              style: TextStyle(color: kTextColor, fontWeight: FontWeight.w500)),
          Container(
              padding: EdgeInsets.all(10),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 8, 4, 58),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Color.fromARGB(255, 253, 252, 253).withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 0,
                  ),
                ],
              ),
              child: Text(
                widget.content,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: 20,
                ),
              )),
        ],
      ),
    );
  }
}
