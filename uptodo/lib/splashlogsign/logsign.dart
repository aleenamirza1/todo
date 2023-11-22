import 'package:flutter/material.dart';
import 'package:uptodo/splashlogsign/Login.dart';
import 'package:uptodo/splashlogsign/register.dart';

class LogSign extends StatelessWidget {
  const LogSign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(
            child: Padding(
          padding: const EdgeInsets.all(40),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Welcome to UpTodo",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 33,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 30),
                Container(
                    padding: EdgeInsets.all(10),
                    child: const Text(
                      "Please login to your account or create new account to continue",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    )),
                const SizedBox(
                  height: 300,
                ),
                Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      LoginPage()));
                        },
                        child: Text("Login"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          backgroundColor: Color.fromARGB(255, 79, 53, 128),
                        ))),
                Container(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      Register()));
                        },
                        child: Text("Sign Up"),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          backgroundColor: Color.fromARGB(255, 79, 53, 128),
                        )))
              ],
            ),
          ),
        )));
  }
}
