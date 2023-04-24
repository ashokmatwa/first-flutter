import 'package:first_app/pages/home_page.dart';
import 'package:first_app/pages/login_page.dart';
import "package:flutter/material.dart";

void main(){
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.green),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
     // initialRoute: "/home",
      routes: {
       "/" : (context) => const LoginPage(),
        "/home" : (context) => const HomePage(),
        "/login" : (context) => const LoginPage(),
      },
    );
  }
}
