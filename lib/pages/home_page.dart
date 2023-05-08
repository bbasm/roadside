import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: CircleAvatar(
                      backgroundImage: AssetImage('lib/images/charles.jpg'),
                      radius: 25),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome Back!'),
                      Text(
                        'Charles',
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: IconButton(
                    icon: Icon(Icons.menu, size: 30),
                    onPressed: () {},
                    alignment: Alignment.centerRight,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black45),
                  borderRadius: BorderRadius.circular(5)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Icon(Icons.search, color: Colors.grey.shade500),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      'Search',
                      style: TextStyle(color: Colors.black45, fontSize: 16),
                    ),
                  )
                ],
              ),
            ),
          ),

          // icon cards
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                // atm card
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(157, 187, 174, 100),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          Icon(
                            Icons.attach_money,
                          ),
                          Text('ATM')
                        ],
                      ),
                    ),
                  ),
                ),

                // gas station card
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(118, 159, 182, 100),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          Icon(
                            Icons.local_gas_station,
                          ),
                          Text('Gas Station')
                        ],
                      ),
                    ),
                  ),
                ),

                // restroom card
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(24, 143, 167, 100),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          Icon(
                            Icons.family_restroom,
                          ),
                          Text('Restroom')
                        ],
                      ),
                    ),
                  ),
                ),

                // restroom card
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(24, 143, 167, 100),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          Icon(
                            Icons.mosque,
                          ),
                          Text('Mosque')
                        ],
                      ),
                    ),
                  ),
                ),

                // minimarker card
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(24, 143, 167, 100),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Column(
                        children: [
                          Icon(
                            Icons.shopping_cart,
                          ),
                          Text('Minimarket')
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
