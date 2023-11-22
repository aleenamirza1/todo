import 'package:flutter/material.dart';
import 'package:uptodo/splashlogsign/Login.dart';
import 'package:uptodo/splashlogsign/loginsuccess.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  onloginPressed(
      TextEditingController email2, TextEditingController password2) {
    print("Email: ${email2.text}");
    print("Password: ${password2.text}");
    email2.text = "";
    password2.text = "";
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController email = TextEditingController();
    TextEditingController password = TextEditingController();
    return Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/5/50/Black_colour.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(40),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Register",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Username",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        alignment: Alignment.centerLeft),
                    TextField(
                      controller: email,
                      decoration: InputDecoration(
                        hintText: "Username ",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 142, 121, 181),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Password",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.centerLeft),
                    TextField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Password ",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        suffixIcon: const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.white,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 142, 121, 181),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          "Confirm Password",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        alignment: Alignment.centerLeft),
                    TextField(
                      controller: password,
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Confirm Password ",
                        hintStyle: TextStyle(color: Colors.white),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.white,
                        ),
                        suffixIcon: const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.white,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 142, 121, 181),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          onloginPressed(email, password);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  LoginSuccessfull(),
                            ),
                          );
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                            side: BorderSide(
                              style: BorderStyle.solid,
                              color: Color.fromARGB(255, 79, 53, 128),
                              width: 3.0,
                            ),
                          ),
                          backgroundColor: Color.fromARGB(255, 79, 53, 128),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "or",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          onloginPressed(email, password);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.g_mobiledata_outlined,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Register with Google",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          backgroundColor: Colors.black,
                          side: BorderSide(
                            style: BorderStyle.solid,
                            color: Color.fromARGB(255, 79, 53, 128),
                            width: 3.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 13),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          onloginPressed(email, password);
                        },
                        child: Container(
                          padding: EdgeInsets.symmetric(vertical: 12),
                          child: Center(
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.apple,
                                  color: Colors.white,
                                ),
                                SizedBox(width: 8),
                                Text(
                                  "Register with Apple",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          backgroundColor: Colors.black,
                          side: BorderSide(
                            style: BorderStyle.solid,
                            color: Color.fromARGB(255, 79, 53, 128),
                            width: 3.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      const LoginPage()));
                        },
                        child: const Text(
                          "Already have an account? Login",
                          style: TextStyle(fontSize: 14, color: Colors.grey),
                        )),
                  ],
                ),
              ),
            ))));
  }
}
