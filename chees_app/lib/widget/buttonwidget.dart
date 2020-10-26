import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  final bool hasBorder;

  const ButtonWidget({Key key, this.title, this.hasBorder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Ink(
      decoration: BoxDecoration(
          color: hasBorder ? Colors.lightBlue : Colors.amber,
          borderRadius: BorderRadius.circular(10),
          border: hasBorder
              ? Border.all(color: Colors.lightBlue, width: 1.0)
              : Border.fromBorderSide(BorderSide.none)),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 60,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: hasBorder ? Colors.white : Colors.lightBlue,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
