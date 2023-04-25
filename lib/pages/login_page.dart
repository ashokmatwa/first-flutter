import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
 const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      //color: Colors.black,
      child: Column(
        children: [
          Image.asset("assets/login_pic.jpg", fit: BoxFit.cover),
          const SizedBox(height: 50,),
          const Text("Welcome",
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
              fontWeight: FontWeight.bold
            ),
          ),
          const SizedBox(height: 50,),
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
                ElevatedButton(onPressed: (){
                  print("Hi Jodhpur");
                },
                  child: Text("LOGIN"),
                  //style: ButtonStyle,
                )
              ],
            ),
          )
        ],
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
