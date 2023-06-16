import 'package:flutter/material.dart';
import 'package:internship2/Screens/Place/plaace.dart';
import 'package:internship2/Screens/Place/place_edit.dart';
import 'Screens/Place/usersearch.dart';
import 'Screens/Place/newmember.dart';
import 'Screens/Account/Account_Master.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Screens/Menu.dart';
import 'Screens/Due/due.dart';
import 'Screens/Maturity/maturity.dart';
import 'Screens/Lapse/lapse.dart';
import 'Screens/Collection/collection.dart';
import 'Screens/Collection/collection2.dart';
import 'Screens/Account/acc_screen.dart';
import 'Screens/Due/due_screen.dart';
import 'Screens/Maturity/mature_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: Firebase.initializeApp(),
        builder: (context, snapshot) => MaterialApp(
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                initialRoute: place.id,
                routes: {
                  mature_screen.id: (ctx) => mature_screen(),
                  due_screen.id: (ctx) => due_screen(),
                  collection2.id: (ctx) => collection2(''),
                  collection.id: (ctx) => collection(1),
                  lapse.id: (ctx) => lapse(),
                  maturity.id: (ctx) => maturity(''),
                  due.id: (ctx) => due(''),
                  menu.id: (ctx) => menu(),
                  placeedit.id1: (ctx) => placeedit(),
                  place.id: (ctx) => place(),
                  acc_master.id: (ctx) => acc_master(''),
                  acc_screen.id: (ctx) => acc_screen(0),
                  newmem.id: (ctx) => newmem(''),
                  user.id: (ctx) => user(''),
                }));
  }
}
