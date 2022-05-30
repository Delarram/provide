import 'package:easyapproach/pages/login_page/dialog.dart';
import 'package:easyapproach/pages/login_page/resuable.dart';
import 'package:flutter/cupertino.dart';
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
      child:  Container(
        width: width,
        margin: const EdgeInsets.symmetric(vertical: 200, horizontal: 20),
        height: height,
        child: Card(
          elevation: 4,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hello",
                style: lableStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Please Login to your account",
                style: klableStyle,
              ),
              const SizedBox(
                height: 30,
              ),
              CustomTextField(
                height: 50,
                width: width,
                labelText: "Email",
                suffixIcon: const Icon(
                  FontAwesomeIcons.envelope,
                  color: Colors.red,
                  size: 20,
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 25, right: 25),
                width: double.infinity,
                height: 50,
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      suffix: Icon(
                        FontAwesomeIcons.eyeSlash,
                        color: Colors.red,
                        size: 20,
                      ),
                      labelText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      )),
                ),
              ),
              Padding(
                padding:
                const EdgeInsets.only(right: 25, top: 15, bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "Forget Password?",
                      style: OlableStyle,
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => showLoaderDialog(context),
                child: Container(
                  alignment: Alignment.center,
                  width: 250,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(50)),
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color(0xFF8A2387),
                            Color(0xFFE94057),
                            Color(0xFFF27121),
                          ])),
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    )));
  }
}
