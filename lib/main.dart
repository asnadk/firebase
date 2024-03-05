import 'package:fire_base_login/homepage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
if(kIsWeb){
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyD_Cj8yDSmQH4BfSCx_z7ekbeuiXyZGcWU",
  authDomain: "flutterloginpage-b328c.firebaseapp.com",
  projectId: "flutterloginpage-b328c",
  storageBucket: "flutterloginpage-b328c.appspot.com",
  messagingSenderId: "846459609008",
  appId: "1:846459609008:web:97cc182516f95f40840075",
  measurementId: "G-36RPBVEJDB"
    )
);
}else{
  await Firebase.initializeApp();
}
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
     scaffoldBackgroundColor: Color.fromARGB(255, 197, 180, 190),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:HomePage()
    );
  }
}


