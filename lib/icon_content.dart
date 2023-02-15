import 'package:flutter/material.dart';
import 'constants.dart';


class iconContent extends StatelessWidget {

  final IconData? myIcon;
  final label;

  iconContent({@required this.myIcon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          myIcon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}