import 'package:flutter/material.dart';
import 'package:internship2/Screens/Account/acc_screen.dart';
import 'package:internship2/models/views/due_display.dart';
import 'package:internship2/models/views/menu_tile.dart';
import 'package:internship2/Screens/Due/due_screen.dart';
import 'package:internship2/Screens/Maturity/mature_screen.dart';
import 'package:internship2/Screens/Lapse/lapse.dart';

class menu extends StatelessWidget {
  const menu({Key? key}) : super(key: key);
  static const id = '/menu';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              menu_tile(
                tle: 'Account '
                    'Master',
                logo: Image.asset('assets/menu/acc_master.png'),
                route: acc_screen.id,
              ),
              menu_tile(
                tle: 'Due '
                    'Account',
                logo: Image.asset('assets/menu/due_acc.png'),
                route: due_screen.id,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              menu_tile(
                tle: 'Records ',
                logo: Image.asset('assets/menu/records.png'),
                route: '',
              ),
              menu_tile(
                tle: 'Lapse '
                    'Account',
                logo: Image.asset('assets/menu/lapse.png'),
                route: lapse.id,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              menu_tile(
                tle: 'Maturity '
                    'Update',
                logo: Image.asset('assets/menu/maturity.png'),
                route: mature_screen.id,
              ),
              menu_tile(
                tle: 'Rokar',
                logo: Image.asset('assets/menu/rokar.png'),
                route: '',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
