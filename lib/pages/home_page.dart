import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          key: _key,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(21, 97, 109, 100),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                width: 200,
                                height: 70,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 228, 227, 227),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(left: 20),
                                      child: CircleAvatar(
                                          backgroundImage: AssetImage(
                                              'lib/images/charles.jpg'),
                                          radius: 25),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            const Text('Welcome Back!'),
                                            const Text(
                                              'Charles',
                                              style: TextStyle(fontSize: 20),
                                            ),
                                          ]),
                                    ),
                                    // Expanded(
                                    //   child: IconButton(
                                    //     icon: const Icon(Icons.menu, size: 30),
                                    //     onPressed: () {
                                    //       _key.currentState!
                                    //           .openDrawer(); //<-- SEE HERE
                                    //     },
                                    //     alignment: Alignment.centerRight,
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                height: 70,
                                width: 150,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 228, 227, 227),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                // child: Column(
                                //   crossAxisAlignment:
                                //       CrossAxisAlignment.center,
                                //   mainAxisAlignment: MainAxisAlignment.center,
                                //   children: [
                                //     Align(
                                //         alignment: Alignment.center,
                                //         child: Text('Your Location',
                                //             style: TextStyle(fontSize: 12))),
                                //     AutoSizeText(
                                //       'Cummings, North Dakota',
                                //       style: TextStyle(fontSize: 14),
                                //       textAlign: TextAlign.center,
                                //       //maxLines: 1,
                                //     )
                                //   ],
                                // ),

                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          color: Color.fromRGBO(21, 97, 109, 100),
                                        ),
                                        child: Icon(Icons.place,),
                                      ),
                                    ),
                                    Text('Your\nLocation', textAlign: TextAlign.center,)
                                  ],
                                )),
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 25, horizontal: 20),
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              // border: Border.all(
                              //   width: 1,
                              //   color: Colors.black45,
                              // ),
                              color: const Color.fromARGB(255, 228, 227, 227),
                              borderRadius: BorderRadius.circular(12)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Icon(Icons.search,
                                    color: Colors.grey.shade500),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Text(
                                  'Search',
                                  style: TextStyle(
                                      color: Colors.black45, fontSize: 16),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // // what can we help you find
              // const Padding(
              //   padding: EdgeInsets.only(left: 15, top: 0, bottom: 10),
              //   child: Text(
              //     'What can we help you find?',
              //     style: TextStyle(fontSize: 20),
              //   ),
              // ),

              // icon cards
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      // atm card
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            //color: Color.fromRGBO(255, 125, 0, 100),
                            color: const Color.fromARGB(255, 228, 227, 227),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.attach_money,
                                ),
                                const Text('ATM')
                              ],
                            ),
                          ),
                        ),
                      ),

                      // gas station card
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            //color: Color.fromRGBO(255, 236, 209, 100),
                            color: const Color.fromARGB(255, 228, 227, 227),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.local_gas_station,
                                ),
                                const Text('Gas Station')
                              ],
                            ),
                          ),
                        ),
                      ),

                      // restroom card
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            //color: Color.fromRGBO(120, 41, 15, 100),
                            color: const Color.fromARGB(255, 228, 227, 227),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.family_restroom,
                                ),
                                const Text('Restroom')
                              ],
                            ),
                          ),
                        ),
                      ),

                      // restroom card
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            //color: Color.fromRGBO(24, 143, 167, 100),
                            color: const Color.fromARGB(255, 228, 227, 227),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.mosque,
                                ),
                                const Text('Mosque')
                              ],
                            ),
                          ),
                        ),
                      ),

                      // minimarker card
                      Padding(
                        padding: const EdgeInsets.all(5),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            //color: Color.fromRGBO(24, 143, 167, 100),
                            color: const Color.fromARGB(255, 228, 227, 227),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.shopping_cart,
                                ),
                                const Text('Minimarket')
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // upcoming rest areas text
              const Padding(
                padding: EdgeInsets.only(left: 15, top: 15, bottom: 10),
                child: Text(
                  'Upcoming Rest Areas',
                  style: TextStyle(fontSize: 20),
                ),
              ),

              // upcoming rest area cards
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    // rest area card
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 256,
                        height: 180,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 228, 227, 227),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child: Text(
                                  'Rest Area KM 21',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                              const Divider(
                                endIndent: 0,
                                thickness: 2,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star_rate,
                                    color: Colors.amber,
                                  ),
                                  const Text('4.6')
                                ],
                              ),
                              const Divider(
                                endIndent: 0,
                                thickness: 2,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Open',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  const Text(' - Closes at 8.30 PM'),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Divider(
                                endIndent: 0,
                                thickness: 2,
                              ),
                              Row(
                                children: [
                                  const Text('Learn more'),
                                  const Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // rest area card
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 256,
                        height: 180,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 228, 227, 227),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child: Text(
                                  'Rest Area KM 41',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                              const Divider(
                                endIndent: 0,
                                thickness: 2,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star_rate,
                                    color: Colors.amber,
                                  ),
                                  const Text('3.8')
                                ],
                              ),
                              const Divider(
                                endIndent: 0,
                                thickness: 2,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Open',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  const Text(' - Closes at 9.00 PM'),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Divider(
                                endIndent: 0,
                                thickness: 2,
                              ),
                              Row(
                                children: [
                                  const Text('Learn more'),
                                  const Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),

                    // rest area card
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 256,
                        height: 180,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 2),
                          borderRadius: BorderRadius.circular(12),
                          color: const Color.fromARGB(255, 228, 227, 227),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(top: 5, bottom: 5),
                                child: Text(
                                  'Rest Area KM 82',
                                  style: TextStyle(fontSize: 17),
                                ),
                              ),
                              const Divider(
                                endIndent: 0,
                                thickness: 2,
                              ),
                              Row(
                                children: [
                                  const Icon(
                                    Icons.star_rate,
                                    color: Colors.amber,
                                  ),
                                  const Text('4.9')
                                ],
                              ),
                              const Divider(
                                endIndent: 0,
                                thickness: 2,
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Open',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  const Text(' - Closes at 10.00 PM'),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              const Divider(
                                endIndent: 0,
                                thickness: 2,
                              ),
                              Row(
                                children: [
                                  const Text('Learn more'),
                                  const Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.grey,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          drawer: Theme(
            data: Theme.of(context).copyWith(
                // Set the transparency here
                canvasColor: Colors.white.withOpacity(
                    1) //or any other color you want. e.g Colors.blue.withOpacity(0.5)
                ),
            child: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  // Expanded(
                  //   flex: 1,
                  //   child: Container(
                  //     width: MediaQuery.of(context).size.width * 0.5,
                  //     child: DrawerHeader(
                  //       decoration: BoxDecoration(
                  //           image: DecorationImage(
                  //               image:
                  //                   AssetImage("lib/images/roadside_logo.png"),
                  //               fit: BoxFit.cover)),
                  //       child: Text("Header"),
                  //     ),
                  //   ),
                  // ),
                  const UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                        //color: const Color(0xff764abc),

                        ),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor: Colors.amber,
                      backgroundImage: AssetImage('lib/images/charles.jpg'),
                    ),
                    accountName: Text(
                      "Charles III",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    accountEmail: Text(
                      "TheThirdCharles@gmail.com",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    //currentAccountPicture: AssetImage('lib/images/roadside_logo.png')
                  ),

                  // const UserAccountsDrawerHeader(
                  //   accountEmail: Align(
                  //     padding: EdgeInsets.all(8.0),
                  //     child: Text('thirdcharles@gmail.com'),
                  //   ),
                  //   accountName: Text("Charles III", style: TextStyle(color: Colors.black),),
                  //   // currentAccountPicture: CircleAvatar(
                  //   //   backgroundColor: Colors.grey,
                  //   //   // backgroundImage: NetworkImage(
                  //   //   //     "https://appmaking.co/wp-content/uploads/2021/08/appmaking-logo-colored.png"),
                  //   // ),
                  //   decoration: BoxDecoration(
                  //       //color: Colors.blue,
                  //       image: DecorationImage(
                  //           image: AssetImage('lib/images/roadside_logo.png'), scale: 10)
                  //       // image: DecorationImage(
                  //       //   image: NetworkImage(
                  //       //     "https://appmaking.co/wp-content/uploads/2021/08/android-drawer-bg.jpeg",
                  //       //   ),
                  //       //   fit: BoxFit.fill,
                  //       // ),
                  //       ),
                  // ),

                  ListTile(
                    leading: Icon(Icons.bookmark),
                    title: const Text('Bookmarks'),
                    onTap: () {},
                  ),

                  ListTile(
                    leading: Icon(Icons.person),
                    title: const Text('Your Profile'),
                    onTap: () {},
                  ),

                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Settings'),
                    onTap: () {},
                  ),

                  ListTile(
                    leading: const Icon(Icons.logout),
                    title: const Text('Logout'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
