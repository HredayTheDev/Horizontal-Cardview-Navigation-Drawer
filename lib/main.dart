import 'package:flutter/material.dart';
import './drawer_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  Widget buildHorizontalCard(String image, String text) {
    return Container(
      width: 160,
      child: Card(
        child: Wrap(
          children: [
            Image.network(image),
            // 'https://villagephysicians.com/wp-content/uploads/2018/02/shutterstock_310920596-600x715.jpg'),
            ListTile(
              title: Text(
                text,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepOrange,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'E~Call',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Column(
            children: [
              Text(
                'Specialist Doctor',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20.0),
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    buildHorizontalCard(
                        'https://villagephysicians.com/wp-content/uploads/2018/02/shutterstock_310920596-600x715.jpg',
                        'Medicine Specialist'),
                    buildHorizontalCard(
                        'https://villagephysicians.com/wp-content/uploads/2018/02/shutterstock_310920596-600x715.jpg',
                        'Medicine Specialist'),
                    buildHorizontalCard(
                        'https://villagephysicians.com/wp-content/uploads/2018/02/shutterstock_310920596-600x715.jpg',
                        'Medicine Specialist'),
                    buildHorizontalCard(
                        'https://villagephysicians.com/wp-content/uploads/2018/02/shutterstock_310920596-600x715.jpg',
                        'Medicine Specialist'),
                    buildHorizontalCard(
                        'https://villagephysicians.com/wp-content/uploads/2018/02/shutterstock_310920596-600x715.jpg',
                        'Medicine Specialist'),
                  ],
                ),
              ),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: <Color>[
                      Colors.deepOrange,
                      Colors.orangeAccent
                    ]),
                  ),
                  child: Container(
                      child: Column(
                    children: [
                      Material(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        elevation: 10,
                        child: Padding(
                          padding: EdgeInsets.all(8),
                          child: Image.asset(
                            'images/flutter.png',
                            width: 80,
                            height: 80,
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(8),
                        child: Text(
                          'Flutter',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )),
                ),
                // UserAccountsDrawerHeader(
                //   accountName: Text("E-Call"),
                //   accountEmail: Text("polockit@gmail.com"),
                //   currentAccountPicture: CircleAvatar(
                //     backgroundColor: Colors.orange,
                //     child: Text(
                //       "P",
                //       style: TextStyle(fontSize: 40.0),
                //     ),
                //   ),
                // ),

                DrawerScreen(Icons.person, 'Profile', () {}),
                DrawerScreen(Icons.medical_services, 'My Services', () {}),
                DrawerScreen(Icons.payment, 'Payment History', () {}),
                DrawerScreen(Icons.rule, 'Terms & Conditions', () {}),
                DrawerScreen(Icons.privacy_tip, 'Privacy Policy', () {}),
                DrawerScreen(Icons.contact_mail, 'About Us', () {}),
                DrawerScreen(Icons.contact_page, 'Contact Us', () {}),
                DrawerScreen(Icons.settings, 'Settings', () {}),
              ],
            ),
          ),
        ));
  }
}
