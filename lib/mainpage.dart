import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/mainpage.png'), fit: BoxFit.cover)),
      //Adding the buttons
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            //Adding the skip button
            Container(
              margin: EdgeInsets.only(top: 15, left: 330),
              padding: EdgeInsets.only(top: 30,bottom: 40),
              child: ElevatedButton(
                onPressed: (){},
                child: Text('Skip', style: TextStyle(fontSize: 15.0,color: Colors.black)),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.pink.shade50,
                ),
              ),
            ),
            //Adding the sign in buttons
            Container(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.45, right: 35, left: 35),
              child: Column(
                children: [
                  ElevatedButton.icon(onPressed: () {  },
                    icon: Icon(Icons.email),
                    label: Text('Continue with Email',
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
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton.icon(onPressed: () {  },
                    icon: Icon(Icons.apple),
                    label: Text('Continue with Apple',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    style: ElevatedButton.styleFrom(primary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      minimumSize: const Size(380, 60),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton.icon(onPressed: () {  },
                    icon: Icon(Icons.g_mobiledata_outlined),
                    label: Text('Continue with Google',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    style: ElevatedButton.styleFrom(primary: Colors.blue.shade400,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      minimumSize: const Size(380, 60),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  ElevatedButton.icon(onPressed: () {  },
                    icon: Icon(Icons.facebook_outlined),
                    label: Text('Continue with Facebook',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        )),
                    style: ElevatedButton.styleFrom(primary: Colors.blueAccent.shade200,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      minimumSize: const Size(380, 60),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.only(top: 685, left: 80),
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
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.95, right: 30, left: 30),
                child : Wrap(
                  alignment: WrapAlignment.center,
                  direction: Axis.horizontal,
                children: <Widget>[
                  Text(
                  "By clicking, 'Continue with Email/Apple/Google/Facebook' above, you agree to 7Krave's",
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
