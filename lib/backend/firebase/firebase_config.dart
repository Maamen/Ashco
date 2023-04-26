import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBmtLd-tSrAsL99i-DDU_H53Z-jHuHqEB8",
            authDomain: "ashconnect-384214.firebaseapp.com",
            projectId: "ashconnect-384214",
            storageBucket: "ashconnect-384214.appspot.com",
            messagingSenderId: "826578315530",
            appId: "1:826578315530:web:c9b66a4336a69bf1fd32f3",
            measurementId: "G-Y3VE2R3D25"));
  } else {
    await Firebase.initializeApp();
  }
}
