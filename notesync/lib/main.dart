import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebasetext/models/notes_data.dart';
import 'package:firebasetext/screens/home_screen.dart';
import 'package:firebasetext/signInUp.dart';
import 'package:firebasetext/trans_test.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: ((BuildContext context) => NotesData()),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}

// final FirebaseAuth mAuth = FirebaseAuth.instance;

// class WelcomeScreen extends StatefulWidget {
//   @override
//   _WelcomeScreenState createState() => _WelcomeScreenState();
// }

// class _WelcomeScreenState extends State<WelcomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       // decoration: BoxDecoration(
//       //   gradient: LinearGradient(
//       //     begin: Alignment.center,
//       //     end:
//       //         Alignment(0.2, 0.0), // 10% of the width, so there are ten blinds.
//       //     colors: [Colors.white, Colors.white], // whitish to gray
//       //     tileMode: TileMode.repeated, // repeats the gradient over the canvas
//       //   ),
//       // ),
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         //#263238
//         //0xFF37474F
//         body: Padding(
//           padding: EdgeInsets.all(30),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               SizedBox(height: 30),
//              // Image(image: AssetImage('assets/Sync (4).gif')),
//               // Text(
//               //   'Sign in',
//               //   style: TextStyle(
//               //       color: Colors.black, fontSize: 30, letterSpacing: 1.3),
//               // ),
//               SizedBox(height: 0),
//               Text(
//                 'Please Sign in to start Syncing',
//                 style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.w300,
//                     color: Colors.grey),
//               ),
//               SizedBox(height: 13),
//               ButtonTheme(
//                 minWidth: 200,
//                 height: 45,
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(horizontal: 40),
//                   child: RaisedButton(
//                     elevation: 2.0,
//                     color: Colors.blue[500],
//                     onPressed: () => signInUsingGoogle(),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Icon(
//                           MdiIcons.google,
//                           color: Colors.white,
//                           size: 25,
//                         ),
//                         SizedBox(
//                           width: 10,
//                         ),
//                         Text(
//                           'Sign in',
//                           style: TextStyle(
//                               fontSize: 20,
//                               color: Colors.white,
//                               fontWeight: FontWeight.w500,
//                               letterSpacing: 1.3),
//                         ),
//                         SizedBox(height: 10),
//                       ],
//                     ),
//                     shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10.0)),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 40),
//               Text(
//                 'Don\'t wanna Sync ?',
//                 style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.w300,
//                     color: Colors.grey),
//               ),
//               SizedBox(
//                 height: 5,
//               ),
//               SizedBox(
//                 width: 200,
//                 child: RaisedButton(
//                   elevation: 0,
//                   color: Colors.transparent,
//                   onPressed: () {},
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Icon(
//                         MdiIcons.bellCancel,
//                         color: Colors.blue,
//                         size: 22,
//                       ),
//                       SizedBox(
//                         width: 10,
//                       ),
//                       Text(
//                         'Skip',
//                         style: TextStyle(
//                             fontSize: 20,
//                             color: Colors.blue,
//                             fontWeight: FontWeight.w500,
//                             letterSpacing: 1.6),
//                       ),
//                     ],
//                   ),
//                   shape: RoundedRectangleBorder(
//                       side: BorderSide(color: Colors.blue),
//                       borderRadius: BorderRadius.circular(4.0)),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   final GoogleSignIn googleSignIn = GoogleSignIn();
//   void signInUsingGoogle() async {
//     FirebaseUser user;
//     final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
//     final GoogleSignInAuthentication googleSignInAuthentication =
//         await googleSignInAccount.authentication;
//     final AuthCredential credential = GoogleAuthProvider.getCredential(
//       accessToken: googleSignInAuthentication.accessToken,
//       idToken: googleSignInAuthentication.idToken,
//     );
//     user = (await mAuth.signInWithCredential(credential)).user;
//     if (user != null) {
//       print('Signed in.......');
//       Navigator.push(context, MaterialPageRoute(builder: (context){
//        return HomeScreen();
//       }));
//     }
//   }

//   void signOutUsingGoogle() async {
//     await mAuth.signOut().then((_) {
//       googleSignIn.signOut();
//       print('Signed Out');
//     });
//   }
// }

// class WelcomeScreen extends StatefulWidget {
//   @override
//   _WelcomeScreenState createState() => _WelcomeScreenState();
// }

// class _WelcomeScreenState extends State<WelcomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Container(
//           alignment: Alignment.center,
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 20),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 // Row(
//                 //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 //   children: [
//                 //     Tab(
//                 //       child: Text('Sign in'),
//                 //     ),
//                 //     Tab(
//                 //       child: Text('Sign'),
//                 //     ),
//                 //   ],
//                 // ),
//                 TabBarView(children: <Widget>[
//                   Text('Sign in'),
//                   Text('Sign up'),
//                 ],),
//                 LimitedBox(
//                   child: Container(
//                     color: Colors.black,
//                   ),
//                   maxHeight: 100,
//                   maxWidth: MediaQuery.of(context).size.width - 30,
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// final FirebaseAuth mAuth = FirebaseAuth.instance;

// class WelcomeScreen extends StatefulWidget {
//   @override
//   _WelcomeScreenState createState() => _WelcomeScreenState();
// }

// class _WelcomeScreenState extends State<WelcomeScreen>
//     with SingleTickerProviderStateMixin {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   TabController _tabController;

//   @override
//   void initState() {
//     _tabController = TabController(length: 2, vsync: this);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           bottom: TabBar(
//             // isScrollable: true,
//             indicatorColor: Colors.black,
//             unselectedLabelColor: Colors.black,
//             labelColor: Colors.amber,
//             // dragStartBehavior: DragStartBehavior.start ,
//             tabs: [
//               Tab(
//                 text: 'Sign in',
//               ),
//               Tab(
//                 text: 'Sign up',
//               ),
//             ],
//             controller: _tabController,
//             // indicatorColor: Colors.white,
//             indicatorSize: TabBarIndicatorSize.tab,
//           ),
//           bottomOpacity: 1,
//         ),
//         body: DefaultTabController(
//           length: 2,
//           child: Container(
//             child: Column(
//               children: <Widget>[
//                 TextField(
//                   controller: emailController,
//                 ),
//                 TextField(
//                   controller: passwordController,
//                 ),
//                 RaisedButton(
//                   onPressed: () => signUpWithEmailPassword(),
//                   child: Text('Google sign-up'),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Future<void> signUpWithEmailPassword() async {
//     FirebaseUser user;
//     try {
//       user = (await mAuth.createUserWithEmailAndPassword(
//           email: emailController.text,
//           password: passwordController.text)) as FirebaseUser;
//     } catch (e) {
//       print(e);
//     }
//   }
// }

//         Google Sign in

// final FirebaseAuth mAuth = FirebaseAuth.instance;

// class WelcomeScreen extends StatefulWidget {
//   @override
//   _WelcomeScreenState createState() => _WelcomeScreenState();
// }

// class _WelcomeScreenState extends State<WelcomeScreen>
//     with SingleTickerProviderStateMixin {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   TabController _tabController;

//   @override
//   void initState() {
//     _tabController = TabController(length: 2, vsync: this);
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Container(
//           child: Column(
//             children: <Widget>[
//               RaisedButton(
//                 onPressed: () => signInUsingGoogle(),
//                 child: Text('Google sign-up'),
//               ),
//               RaisedButton(
//                 onPressed: () => signOutUsingGoogle(),
//                 child: Text('sign-out'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   final GoogleSignIn googleSignIn = GoogleSignIn();
//   void signInUsingGoogle()async{
//     FirebaseUser user;
//     final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
//     final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
//    final AuthCredential credential = GoogleAuthProvider.getCredential(
//       accessToken: googleSignInAuthentication.accessToken,
//       idToken: googleSignInAuthentication.idToken,
//     );
//     user =  (await mAuth.signInWithCredential(credential)) as FirebaseUser;
//     if(user!=null){
//       print('Signed in.......');
//       Triy();
//     }
//   }
//   void signOutUsingGoogle()async{
//     await mAuth.signOut().then((_){
//       googleSignIn.signOut();
//       print('Signed Out');
//     } );
//   }
// }
