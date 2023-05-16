import 'package:flutter/material.dart';

class menu_tile extends StatelessWidget {
  const menu_tile({
    super.key,
    required this.tle,
    required this.logo,
    required this.route,
  });

  final String tle;
  final Image logo;
  final String route;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextButton(
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Container(
        width: size.width * 0.4,
        height: size.width * 0.5,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width * 0.37,
              height: size.width * 0.42,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Color(0xff32b9ae),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: size.width * 0.075,
                    top: size.height * 0.05,
                    child: Container(
                        width: size.width * 0.22,
                        height: size.height * 0.07,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: logo),
                  ),
                  Positioned(
                    left: size.width * 0.075,
                    top: size.height * 0.12,
                    right: size.width * 0.075,
                    child: Text(
                      tle,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff4a5568),
                        fontSize: 15.5,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
