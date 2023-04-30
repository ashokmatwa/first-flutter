import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
 const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      //color: Colors.black,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/login_pic.jpg", fit: BoxFit.cover, height: 400,),
            const SizedBox(height: 30,),
            const Text("Welcome",
              style: TextStyle(
                fontSize: 50,
                color: Colors.black,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        hintText: "Enter Username",
                        labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password"),
                  ),
                  SizedBox(height: 25,),
                  ElevatedButton(
                    onPressed: (){
                      //print("Hi Jodhpur");
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: Text("LOGIN", //style: TextStyle(fontSize: 20)
                    ),
                    style: TextButton.styleFrom(minimumSize: const Size(120, 50)),
                    //style: ButtonStyle,
                  )
                ],
              ),
            )
          ],
        ),
      )
      // child: Center(
      //   child: Text("Login Page",
      //   style: TextStyle(
      //     fontSize: 30,
      //     color: Colors.orange,
      //     fontWeight: FontWeight.bold,
      //   ),
      //   ),
      // ),
    );
  }
}
