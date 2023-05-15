import 'package:flutter/material.dart';
import 'package:roadside/pages/home_page.dart';

class GetStartedPage extends StatefulWidget {
  const GetStartedPage({super.key});

  @override
  State<GetStartedPage> createState() => _GetStartedPageState();
}

class _GetStartedPageState extends State<GetStartedPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            // welcome text
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                'Welcome to Roadside',
                style: TextStyle(fontSize: 30),
              ),
            ),

            // logo pic
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(
                child: Container(
                    width: 250,
                    height: 250,
                    child: Image.asset('lib/images/roadside_logo.png')),
              ),
            ),

            // intro text
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 40),
              child: Text(
                'It is important to enable location settings to be able show rest areas along your vicinity, please enable it in settings',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),

            // get started button
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 130,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 201, 231, 255),
                    border: Border.all(
                      color: Colors.black,
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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 45),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Get Started',
                                style: TextStyle(fontSize: 25),
                              ),
                              Icon(Icons.arrow_forward)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
