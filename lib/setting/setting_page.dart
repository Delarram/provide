import 'package:easyapproach/widget/textview/text_view.dart';
import 'package:flutter/material.dart';
import 'package:easyapproach/constant/constant_textStyle.dart' as constant;
import 'package:easyapproach/widget/neo_text.dart';

class MySetting extends StatelessWidget {
  const MySetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F8FC),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Setting',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.menu,
            color: Colors.orangeAccent,
            size: 30,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.orangeAccent,
              size: 30,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.teal),
                    image: const DecorationImage(
                        image: AssetImage("images/punam.jpeg"),
                        fit: BoxFit.cover)
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  NeoText(
                      text: "delarram black poudel",
                      size: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                  const SizedBox(
                    height: 5,
                  ),
                  NeoText(
                    text: "delupoudel@gmail.com",
                    size: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                  ),
                  // const Text(
                  //   "Delarram Black poudel",
                  //   style: constant.klableStyle,
                  // ),
                  // SizedBox(height: 10,),
                  // const Text(
                  //   "Delarram@gmail.com",
                  //   style: constant.jlableStyle,
                  // ),
                  const SizedBox(
                    height: 10,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: Text("Edit profile"),
                    color: Colors.orangeAccent,
                    shape: StadiumBorder(),
                  ),
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  color: Colors.white,
                  height: 500,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children:  [
                        SizedBox(
                          height: 20,
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
