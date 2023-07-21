import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/register.png'), fit: BoxFit.cover)),
      child: Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: [
          //Adding the sign in arrow button
          Container(
            margin: EdgeInsets.only(top: 53,left: 25,),
            child: Row(
              children: <Widget>[
                CircleAvatar(
                  radius: 28,
                  backgroundColor: Color(0xFFDCF6ED),
                  child: IconButton(
                    onPressed: (){
                    },
                    icon: Icon(Icons.arrow_back),
                    color: Colors.black,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10,),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),

      SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45, right: 35, left: 35),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey.shade300,
                  filled: true,
                  hintText: 'Enter your email',
                    hintStyle: TextStyle(fontSize: 18.0, color: Colors.grey.shade900),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    fillColor: Colors.grey.shade300,
                    filled: true,
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: 'Password',
                    hintStyle: TextStyle(fontSize: 18.0, color: Colors.grey.shade900),
                    border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10))),
              ),

              Row(
                children: [
                  Expanded(
                      child: Row(
                        children: [
                          Checkbox(
                            value: false,
                            onChanged: (bool? newValue) {
                            },
                          ),
                          Text('Remember me'),
                        ],
                      ),
                  ),
                  Expanded(
                    child: TextButton(
                          onPressed: () {
                          },
                          child: Text(
                            'Forgot password?',
                            style: TextStyle(
                              color: Colors.red.shade800,
                            ),
                          ),
                        ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),

              Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.68, right: 35, left: 35),
                child: ElevatedButton.icon(onPressed: () {  },
                  icon: Icon(Icons.login),
                  label: Text('Sign In',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                  style: ElevatedButton.styleFrom(primary: Colors.green.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Rounded corners
                    ),
                    minimumSize: const Size(380, 60),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),

              Container(
                margin: EdgeInsets.only(top: 670, left: 80),
                child: Row(
                  children:<Widget> [
                    Text( "Don't have an account?",
                      style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                    TextButton(onPressed: (){
                      Navigator.pushNamed(context, 'register');
                    }, child: Text('Sign Up',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.teal
                        ))),
                  ],
                ),
              ),

              Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.95, right: 60, left: 60),
                  child : Wrap(
                    alignment: WrapAlignment.center,
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Text(
                        "By clicking, 'Sign In' above, you agree to 7Krave's",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black, // Add the desired text color
                            fontSize: 12,
                            fontWeight: FontWeight.w500
                        ),
                      ),
                      Text.rich(TextSpan(
                        style: TextStyle(color: Colors.lime.shade800),
                        children: [
                          TextSpan(text: "Terms & Conditions",
                              style: TextStyle(fontSize: 12,
                                  fontWeight: FontWeight.w500))
                        ],
                      )),
                      Text.rich(TextSpan(
                        style: TextStyle(color: Colors.black),
                        children: [
                          TextSpan(text: " and ",
                              style: TextStyle(fontSize: 12,
                                  fontWeight: FontWeight.w500))
                        ],
                      )),
                      Text.rich(TextSpan(
                        style: TextStyle(color: Colors.lime.shade800),
                        children: [
                          TextSpan(text: "Privacy Policy.",
                              style: TextStyle(fontSize: 12,
                                  fontWeight: FontWeight.w500))
                        ],
                      ))
                    ],
                  )
              ),



        ],
        ),
      ),
      );
  }
}
