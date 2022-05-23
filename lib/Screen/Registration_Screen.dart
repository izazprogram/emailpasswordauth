import 'package:emailpasswordauth/Screen/LogIn_Screen.dart';
import 'package:flutter/material.dart';

import 'Home_Screen.dart';

class MyReg_Form extends StatefulWidget {
  const MyReg_Form({Key? key}) : super(key: key);

  @override
  State<MyReg_Form> createState() => _MyReg_FormState();
}

class _MyReg_FormState extends State<MyReg_Form> {
  final _formKey=GlobalKey();

  final TextEditingController firstNamecontroller = new TextEditingController();
  final TextEditingController secondNamecontroller = new TextEditingController();
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController confrompasswordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {

    final firstNameField = TextFormField(
      autofocus: false,
      controller: firstNamecontroller,
      keyboardType: TextInputType.name,

      //validator
      onSaved: (value) {
        firstNamecontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "First Name",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );
    final secondNameField = TextFormField(
      autofocus: false,
      controller: secondNamecontroller,
      keyboardType: TextInputType.name,

      //validator
      onSaved: (value) {
        secondNamecontroller.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Second Name",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
    );

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
    final conformpassowrdField = TextFormField(
      autofocus: false,
      controller: confrompasswordController,
      obscureText: true,

      //validator
      onSaved: (value) {
        confrompasswordController.text = value!;
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
          Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
        },
        child: Text("SignUp",style: TextStyle(
            fontSize: 20
        ),),

      ),
    );


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back,color: Colors.red,),
          onPressed: (){
            Navigator.of(context).pop();
          },
        ),
      ),
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
                    height: 100,
                    child: Image.asset("assets/user.png",
                      fit: BoxFit.contain,
                    ),

                  ),
                  SizedBox(height: 40,),
                  firstNameField,
                  SizedBox(height: 20,),
                  secondNameField,
                  SizedBox(height: 20,),

                  emailField,
                  SizedBox(
                    height: 20,
                  ),
                  passowrdField,
                  SizedBox(height: 20,),
                  conformpassowrdField,
                  SizedBox(height: 20,),
                  loginButton,
                  SizedBox(height: 20,),

                ],

              ),

            ),
          ),
        ),
      ),
    );
  }
}
