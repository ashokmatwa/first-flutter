import 'package:first_app/utils/routes.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
 const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if(_formKey.currentState!.validate()){
      setState(() {
        changeButton = true;
      });
    }
    // setState(() {
    //   changeButton = true;
    // });
    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      //color: Colors.black,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/login_pic.jpg", fit: BoxFit.cover, height: 400,),
              const SizedBox(height: 30,),
              Text("Welcome $name",
                style: const TextStyle(
                  fontSize: 30,
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
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return "username cannot be empty";
                        }
                        return null;
                      },
                      onChanged: (value){
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: "Enter Password",
                          labelText: "Password"),
                      validator: (value) {
                        if(value == null || value.isEmpty){
                          return "password cannot be empty";
                        }else if(value.length < 6){
                          return "password length should be 6 and more";
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 25,),

                    InkWell(
                        onTap: () => moveToHome(context),
                      // onTap: () async{
                        // setState(() {
                        //   changeButton = true;
                        // });
                        // await Future.delayed(Duration(seconds: 1));
                        // await Navigator.pushNamed(context, MyRoutes.homeRoute);
                        // setState(() {
                        //   changeButton = false;
                        // });
                      // },
                      child: AnimatedContainer(
                        duration: const Duration(seconds: 1),
                        // width:120,
                       width: changeButton ? 50 : 120,
                        height: 50,
                        // color: Colors.green,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(changeButton ? 50 :10)
                        ),
                        child: changeButton ? const Icon(Icons.done,color: Colors.white,) : const Text("Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18
                            ),
                          //textAlign: TextAlign.center,
                        ),
                      ),
                    )
                    // ElevatedButton(
                    //   onPressed: (){
                    //     //print("Hi Jodhpur");
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    //   child: Text("LOGIN", //style: TextStyle(fontSize: 20)
                    //   ),
                    //   style: TextButton.styleFrom(minimumSize: const Size(120, 50)),
                    //   //style: ButtonStyle,
                    // )
                  ],
                ),
              )
            ],
          ),
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
