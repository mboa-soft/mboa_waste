import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:mboa_waste/models/models.dart';
import 'package:mboa_waste/widgets/widgets.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mboawaste"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[Text("MBOA WASTE")],
        ),
      ),
    );
  }
}
