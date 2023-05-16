import 'package:flutter/material.dart';
import 'package:internship2/Screens/Account/Account_Master.dart';
import 'package:internship2/models/views/menu_tile.dart';
import 'package:internship2/Screens/Due/due.dart';

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
                route: acc_master.id,
              ),
              menu_tile(
                tle: 'Due '
                    'Account',
                logo: Image.asset('assets/menu/due_acc.png'),
                route: due.id,
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
                route: '',
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
                route: '',
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
