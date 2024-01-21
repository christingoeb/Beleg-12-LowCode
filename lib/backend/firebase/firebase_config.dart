import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBiDOfwHDxWi8HFT-o5HE5zYct9fX6LRro",
            authDomain: "te-chi-chri-9rmiar.firebaseapp.com",
            projectId: "te-chi-chri-9rmiar",
            storageBucket: "te-chi-chri-9rmiar.appspot.com",
            messagingSenderId: "1099010587002",
            appId: "1:1099010587002:web:738af0aad2120625237ec3"));
  } else {
    await Firebase.initializeApp();
  }
}
