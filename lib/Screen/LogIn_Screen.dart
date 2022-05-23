import 'dart:ffi';

import 'package:flutter/material.dart';

class MyLogInFrom extends StatefulWidget {
  const MyLogInFrom({Key? key}) : super(key: key);

  @override
  State<MyLogInFrom> createState() => _MyLogInFromState();
}

class _MyLogInFromState extends State<MyLogInFrom> {
  //form key
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //email field

    final emailField = TextFormField(
      autofocus: false,
      controller: emailController,
      keyboardType: TextInputType.emailAddress,

      //validator
      onSaved: (value) {
        emailController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    final passowrdField = TextFormField(
      autofocus: false,
      controller: passwordController,
      obscureText: true,

      //validator
      onSaved: (value) {
        passwordController.text = value!;
      },
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          suffixIcon: Icon(Icons.remove_red_eye),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

    // bottun
    final loginButton = Material(
      elevation: 3,
      borderRadius: BorderRadius.circular(30),
      color: Colors.redAccent,
      child: MaterialButton(

        padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
        minWidth: MediaQuery.of(context).size.width/2,
        onPressed: (){

        },
        child: Text("Login",style: TextStyle(
          fontSize: 20
        ),),

      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.all(36),
            child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  
                  children: <Widget>[
                    SizedBox(
                      height: 150,
                      child: Image.asset("assets/user.png",
                      fit: BoxFit.contain,
                      ),

                    ),
                    SizedBox(height: 50,),
                    emailField,
                    SizedBox(
                      height: 20,
                    ),
                    passowrdField,
                    SizedBox(height: 20,),
                    loginButton,
                    
                    Text("Already Singi ")
                  ],
                  
                ),
            
            ),
          ),
        ),
      ),
    );
  }
}
