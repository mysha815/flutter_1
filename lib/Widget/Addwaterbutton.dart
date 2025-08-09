import 'package:flutter/material.dart';
class Addwaterbutton extends StatelessWidget {
  String text;
 //final int amount;
 IconData ? icon;
 final VoidCallback onClick;
   Addwaterbutton({
    super.key,  required this.onClick, this.icon, required this.text

  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton.icon(
            onPressed: onClick,
            icon: Icon(icon ?? Icons.water_drop),
            label: Text('${text} LTR'),
          ),
        ));
  }
}