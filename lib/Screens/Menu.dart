import 'package:flutter/material.dart';
import 'package:internship2/models/views/menu_tile.dart';

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
                  logo: Image.asset('assets/menu/acc_master.png')),
              menu_tile(
                  tle: 'Account '
                      'Master',
                  logo: Image.asset('assets/menu/acc_master.png')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              menu_tile(
                  tle: 'Account '
                      'Master',
                  logo: Image.asset('assets/menu/acc_master.png')),
              menu_tile(
                  tle: 'Account '
                      'Master',
                  logo: Image.asset('assets/menu/acc_master.png')),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              menu_tile(
                  tle: 'Account '
                      'Master',
                  logo: Image.asset('assets/menu/acc_master.png')),
              menu_tile(
                  tle: 'Account '
                      'Master',
                  logo: Image.asset('assets/menu/acc_master.png')),
            ],
          ),
        ],
      ),
    );
  }
}
