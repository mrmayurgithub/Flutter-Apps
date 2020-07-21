import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// final FirebaseAuth mAuth = FirebaseAuth.instance;

// class signInUp extends StatefulWidget {
//   @override
//   _signInUpState createState() => _signInUpState();
// }

// class _signInUpState extends State<signInUp>
//     with SingleTickerProviderStateMixin {
//   TextEditingController emailController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Container(
//         child: Column(
//           children: [
//             TextField(
//               controller: emailController,
//             ),
//             TextField(
//               controller: passwordController,
//             ),
//             RaisedButton(
//               onPressed: () => signUpWithEmailPassword(),
//               child: Text('Google sign-up'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
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


class Triy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.black,),
      body: Column(
      ),
    );
  }
}
