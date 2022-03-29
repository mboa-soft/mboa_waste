
import 'package:flutter/material.dart';

import '../config/palette.dart';
import '../config/styles.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final void Function()  onTap;
  final Icon? icon;
  const ActionButton({
    Key? key,
    required this.title,
    required this.onTap,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
        decoration: BoxDecoration(
          color: Palette.primary,
          borderRadius: const BorderRadius.all(Radius.circular(30)),
        ),
        child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon ?? const SizedBox.shrink(),
              const SizedBox(
                width: 10,
              ),
              Text(
                title,
                style:
                    Styles.header.copyWith(color: Colors.white, fontSize: 20),
              )
            ]),
      ),
    );
  }
}
