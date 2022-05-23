import 'package:flutter/material.dart';

import 'Screen/LogIn_Screen.dart';
import 'Screen/Registration_Screen.dart';

void main() {
  runApp(const MyRegFrom());
}
class MyRegFrom extends StatelessWidget {
  const MyRegFrom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Email And Password Login",
      theme: ThemeData(
        primarySwatch: Colors.red
      ),
      home: MyLogInFrom(),
    );
  }
}
