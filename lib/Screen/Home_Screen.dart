import 'package:emailpasswordauth/Screen/LogIn_Screen.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome "),
        centerTitle: true,
      ),
      
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 250,
              child: Image.asset("assets/icon.jpg"),
            ),
            Text("Welcome Back",style: TextStyle(
              fontSize: 30
            ),),
            Text("Name",style: TextStyle(
              fontSize: 20,
            ),),
            Text("Email",style: TextStyle(
              fontSize: 30
            ),),
            SizedBox(height: 10,),
            ActionChip(label: Text("Logout",style: TextStyle(
              fontSize: 30,
              color: Colors.redAccent
            ),), onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyLogInFrom()));
            })
          ],
        ),
      ),
    );
  }
}
