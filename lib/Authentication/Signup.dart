import 'package:email_validator/email_validator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vtop/Authentication/Login.dart';


class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final _formKey = GlobalKey<FormState>();
  // final _emailKey = GlobalKey<FormState>();
  // final _passwordKey = GlobalKey<FormState>();
  // final _cnfPassKey = GlobalKey<FormState>();
  
  final TextEditingController emailController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();
  final TextEditingController cnfPasswordController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
          child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage('assets/images/Space.png'),
                  fit: BoxFit.cover)),
          child: Stack(
            children: <Widget>[
              
              Container(
                margin: EdgeInsets.only(top:60, left: 15),
                child: IconButton(
                  icon: Icon(Icons.arrow_back, 
                  size: 30,
                  color: Colors.white,), 
                onPressed: (){
                  Navigator.pop(context);
                },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 150, left: 35),
                child: Text(
                  "SIGN UP",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5, right: 10),
                margin: EdgeInsets.only(top: 250, left: 10),
                child: TextFormField(
                  
                  // key: _emailKey,
                  keyboardType: TextInputType.emailAddress,
                  controller: emailController,
                 validator: (value) {
                    Pattern pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                    RegExp regex = new RegExp(pattern);
                    if (!(regex.hasMatch(value) && value.contains("vitap.ac.in")))
                     return "Please use only VIT-AP Email-ID";
                    else
                      return null;
                  },
                  style: TextStyle(color: Colors.white),
                  obscureText: false,
                  autofocus: false,
                  decoration: InputDecoration(
                    errorStyle: TextStyle(color:Colors.white),
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                      ),
                      border: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                      ),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.white,
                        size: 30,
                      ),
                      hintText: "Enter you Vit-AP Email ID",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5, right: 10),
                margin: EdgeInsets.only(top: 350, left: 10),
                child: TextFormField(
                  // key: _passwordKey,
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                 validator: (value) {
                    if (value.length < 6) {
                      return "Enter more than 6 Characters";
                    }
                    return null;
                  },
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  autofocus: false,
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                      ),
                      border: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                      ),
                      prefixIcon: Icon(
                        Icons.text_fields,
                        color: Colors.white,
                        size: 30,
                      ),
                      hintText: "Ssshhh!!! its a secret",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 5, right: 10),
                margin: EdgeInsets.only(top: 450, left: 10),
                child: TextFormField(
                  // key: _cnfPassKey,
                  controller: cnfPasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value){
                    if(value != passwordController.text)
                    {
                      return "Passwords donot match";
                    }
                    return null;
                  },
                  style: TextStyle(color: Colors.white),
                  obscureText: true,
                  autofocus: false,
                  decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                      ),
                      border: const OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 2.0),
                      ),
                      prefixIcon: Icon(
                        Icons.security,
                        color: Colors.white,
                        size: 30,
                      ),
                      hintText: "Mind Writing it again?",
                      hintStyle: TextStyle(color: Colors.white, fontSize: 15),
                      labelText: "Confirm Password",
                      labelStyle: TextStyle(color: Colors.white, fontSize: 20)),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 18,
                width: 350,
                // padding: EdgeInsets.only(left: 5, top:5, right:4),
                margin: EdgeInsets.only(top: 550, left: 20),
                child: RaisedButton(
                  color: Colors.pink,
                  onPressed: () {
                    if(_formKey.currentState.validate())
                    {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                    }
                  },
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w900),
                  ),
                  elevation: 20,
                ),
              ),
             
                   Container(
                  margin: EdgeInsets.only(top: 630, left: 180),
                  child: RichText(
                    text: TextSpan(
                        text: "OR ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w700),
                        ),
                  )
                  ),
                  Container(
                height: MediaQuery.of(context).size.height / 15,
                width: MediaQuery.of(context).size.width,
                // padding: EdgeInsets.only(left: 5, top:5, right:4),
                margin: EdgeInsets.only(top: 670, left: 20, right: 20),
                child: InkWell(
                  splashColor: Colors.black,
                  onTap: (){

                  },
                   child: Card(
                    elevation: 20,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                     Container(
                       padding: EdgeInsets.all(10),
                       height: 30,
                       width: 30,
                       decoration: BoxDecoration(
                       image:DecorationImage(
                         image: AssetImage('assets/images/google.png'),
                       ),
                     ),),


                      Container(
                       padding: EdgeInsets.only(top:15, left:10),
                       height: 50,
                       width: 130,
                       child: Text("Sign up with google",
                       style: TextStyle(
                         color:Colors.black, fontWeight: FontWeight.w900,
                          fontSize: 15,

                       ),),
                       ),
                     
                    ],),
                  ),
                )
              ),
            ],
          ),
        ),
      ),
    );
  }
}
