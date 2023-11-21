import 'package:flutter/material.dart';
import 'package:smarttail/nextpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Firstpage(),
    );
  }
}

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  var us = 'admin';
  var pass = 'admin123';
  var username = TextEditingController();
  var password = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Form(
          key: formkey,
          child: Container(
            width: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: username,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Colors.white,
                      label: Icon(Icons.person),
                      hintText: 'Enter The Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  validator: (value) {
                    if (value!.isEmpty || value == null) {
                      return "Enter The Username";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                TextFormField(
                  controller: password,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.white)),
                      filled: true,
                      fillColor: Colors.white,
                      label: Icon(Icons.lock),
                      hintText: 'Enter The Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                  validator: (value) {
                    if (value!.isEmpty || value == null) {
                      return "Enter The Password";
                    } else {
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 50,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (formkey.currentState!.validate() &&
                          username.text == us &&
                          password.text == pass) {
                        setState(() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => secondpage()));
                        });
                      }
                    },
                    child: Text('LOGIN')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
