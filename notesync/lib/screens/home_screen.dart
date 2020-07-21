import 'dart:ffi';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetext/screens/profile_screen.dart';
import 'package:firebasetext/screens/search_screen.dart';
import 'package:firebasetext/services/add_note.dart';
import 'package:flutter/material.dart';

List<String> data = ['jbdfvbdfvbdfjvbdn', 'jdhvhjdfvhdfv', 'ddsjhcvdscu'];

FirebaseAuth _auth = FirebaseAuth.instance;

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

//   static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
//  List<Widget> _widgetOptions = <Widget>[
//   HomeScreen(),
//   SearchScreen(),
//   ProfileScreen(),
// ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          title: Padding(
            padding: EdgeInsets.fromLTRB(20, 62, 80, 40),
            child: Text(
              'NoteSync',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                letterSpacing: 1.5,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TextField(
          //   onChanged: (value) {
          //     setState(() {
          //       data.add(value);
          //     });
          //   },
          // );
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return NoteTake();
          }));
          // setState(() {});
        },
        elevation: 4,
        backgroundColor: Colors.black,
        child: Icon(
          Icons.add,
        ),
      ),
      body: data.length == 0
          ? Center(
              child: Image(
                image: AssetImage('assets/study1.jpg'),
              ),
            )
          : GridView.count(
              primary: false,
              padding: EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                for (int i = 0; i < data.length; i++)
                  Container(
                    decoration: BoxDecoration(
                      // color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(data[i]),
                    ),
                  ),
              ],
            ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        backgroundColor: Colors.grey[100],
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text(
              'Home',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            backgroundColor: Colors.black,
            title: Text(
              'Search',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
