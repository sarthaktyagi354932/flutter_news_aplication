import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news/auth/login_screen.dart';
import 'package:news/screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
   await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCC6JCMgpjmeEnfrF8WK8Zw-PHfEuPUr1g",
            authDomain: "news-api-99678.firebaseapp.com",
            projectId: "news-api-99678",
            storageBucket: "news-api-99678.firebasestorage.app",
            messagingSenderId: "502129104607",
            appId: "1:502129104607:web:03ebd71cdb725b77d33b6a"));
  } else {
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home: LoginScreen(),
      home: Screen(),
    );
  }
}
