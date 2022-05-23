import 'package:flutter/material.dart';
import 'package:easyapproach/constant/constant_textStyle.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: SingleChildScrollView(
      child: SizedBox(
          width: width,
          height: height,
          child: Flexible(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 200, horizontal: 20),
              color: Colors.black38,
            ),
          )),
    ));
  }
}
