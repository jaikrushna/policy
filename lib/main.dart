import 'package:flutter/material.dart';
import 'package:internship2/Screens/Records/records.dart';
import 'package:internship2/Screens/plaace.dart';
import 'package:internship2/Screens/place_edit.dart';
import 'Screens/usersearch.dart';
import 'Screens/newmember.dart';
import 'Screens/Account/Account_Master.dart';
import 'Screens/Account/client_dtbase.dart';
import 'package:firebase_core/firebase_core.dart';
import 'Screens/Menu.dart';
import 'Screens/Due/due.dart';
import 'Screens/Maturity/maturity.dart';
import 'Screens/Lapse/lapse.dart';

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
                initialRoute: menu.id,
                routes: {
                  lapse.id: (ctx) => lapse(),
                  maturity.id: (ctx) => maturity(),
                  due.id: (ctx) => due(),
                  menu.id: (ctx) => menu(),
                  placeedit.id1: (ctx) => placeedit(),
                  place.id: (ctx) => place(),
                  acc_master.id: (ctx) => acc_master(),
                  newmem.id: (ctx) => newmem(),
                  user.id: (ctx) => user(),
                  Record_Page.id: (ctx) => Record_Page(),
                }));
  }
}
