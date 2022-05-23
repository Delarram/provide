import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easyapproach/constant/constant_textStyle.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyLoginPage extends StatelessWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  SingleChildScrollView(
          child:  Container(
            margin: EdgeInsets.symmetric(vertical: 220,horizontal: 20),
            color: Colors.black38,
            width: MediaQuery.of(context).size.height,
            height: MediaQuery.of(context).size.height,
          ),
        ));
  }
}
