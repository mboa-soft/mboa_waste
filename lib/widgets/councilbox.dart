import 'package:flutter/material.dart';
import 'package:mboa_waste/config/palette.dart';
import 'package:mboa_waste/models/models.dart';

class CouncilBox extends StatelessWidget {
  final Council council;
  const CouncilBox({Key? key, required this.council}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Container(
        height: 100.0,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(24.0)),
      ),
    );
  }
}
