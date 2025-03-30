import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAQPKIDqkS8dzuG0QC8ZEdBx70Ui_lE8wo",
            authDomain: "bin-go-t8bonu.firebaseapp.com",
            projectId: "bin-go-t8bonu",
            storageBucket: "bin-go-t8bonu.firebasestorage.app",
            messagingSenderId: "806624109461",
            appId: "1:806624109461:web:7358db1f871d7e96924c9c",
            measurementId: "G-HG3VTDDGEJ"));
  } else {
    await Firebase.initializeApp();
  }
}
