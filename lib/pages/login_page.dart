import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 220, 220, 220),
      body: Align(
        alignment: AlignmentDirectional(0, 1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // roadside logo
              Padding(
                padding: const EdgeInsets.only(bottom: 120, top: 100),
                child: Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    height: 130,
                    "lib/images/roadside_logo.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3,
                      color: Color(0x24000000),
                      offset: Offset(0, -1),
                    )
                  ],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0),
                    bottomRight: Radius.circular(0),
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // welcome log in text
                    Padding(
                      padding: const EdgeInsets.only(top: 40, left: 40),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Welcome, Let's Login",
                            style: TextStyle(fontSize: 30)),
                      ),
                    ),
              
                    // email textfield
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          hoverColor: Colors.blue.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(Icons.email),
                          labelText: 'Email',
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                        ),
                      ),
                    ),
              
                    // email textfield
                    Padding(
                      padding: const EdgeInsets.only(left: 40, right: 40, top: 30),
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          hoverColor: Colors.blue.shade100,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          prefixIcon: Icon(Icons.lock),
                          labelText: 'Password',
                          floatingLabelBehavior: FloatingLabelBehavior.auto,
                        ),
                      ),
                    ),
              
                    // login page
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey,
                              padding: EdgeInsets.only(
                                  top: 10, bottom: 10, right: 130, left: 130),
                              // padding:
                              //     const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                              textStyle: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold)),
                          child: Text(
                            'Login',
                          )),
                    ),
              
                    // dont have an account? sign up
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 50),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account? ",
                              style: TextStyle(fontSize: 17)),
                          GestureDetector(
                              onTap: () {},
                              child: Text(
                                "Sign up",
                                style: TextStyle(color: Colors.blue, fontSize: 17),
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
