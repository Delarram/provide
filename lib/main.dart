import 'package:easyapproach/pages/login_page/login.dart';
import 'package:easyapproach/setting/setting_page.dart';
import 'package:easyapproach/view/my_home_page.dart';
import 'package:easyapproach/widget/textview/profile_screen_build.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/todo_model.dart';

void main() {
  runApp(
       ChangeNotifierProvider(
         create: (_)=> TodoModel(),
           child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLoginPage(),
    );
  }
}