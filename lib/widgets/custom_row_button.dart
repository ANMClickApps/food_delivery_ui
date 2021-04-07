import 'package:flutter/material.dart';
import 'package:food_delivery_ui/colors_style.dart';

class CustomRowButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 236.0,
          height: 68.0,
          child: OutlinedButton(
            child: Text('Playstore'),
            style: OutlinedButton.styleFrom(
                backgroundColor: BrandColors.colorPrimary),
            onPressed: () {},
          ),
        ),
        SizedBox(width: 30.0),
        Container(
          width: 236.0,
          height: 68.0,
          child: OutlinedButton(
            child: Text('App store'),
            style:
                OutlinedButton.styleFrom(side: BorderSide(color: Colors.white)),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
