import 'package:fire_base_login/loginpage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              "FLUUER ",
              style: TextStyle(color: Colors.blue,
              fontSize: 24.0,
              fontWeight: FontWeight.bold),
            ), 
            Text(
              "FIREBASE",
              style: TextStyle(color: Colors.orange,
              fontSize: 24.0,
              fontWeight: FontWeight.bold),
            ),
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'welcome flutter World',
              style: TextStyle(color: Color.fromARGB(255, 25, 0, 255),
              fontSize: 24.0,
              fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          ElevatedButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => const LoginPage(),
                    ),
                    (route) => false);
              },
              child: const Text('Sign Out'))
        ],
      ),
    );
  }
}