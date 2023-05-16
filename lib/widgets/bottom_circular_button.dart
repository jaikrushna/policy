import 'package:flutter/material.dart';

class circular_button extends StatelessWidget {
  const circular_button({
    super.key,
    required this.size,
    required this.icon,
  });

  final double size;
  final Image icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      padding: EdgeInsets.all(8.0),
      constraints: BoxConstraints(minWidth: size),
      onPressed: () {},
      child: icon,
      elevation: 2.0,
      fillColor: Colors.white,
      shape: CircleBorder(),
    );
  }
}
