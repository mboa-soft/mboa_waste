import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'screens/screens.dart';

void main() {
  runApp(const ProviderScope(child: MboaWaste()));
}

class MboaWaste extends StatelessWidget {
  const MboaWaste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Mboa Waste",
        theme: ThemeData(
          primarySwatch: Colors.green,
          textTheme: GoogleFonts.latoTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: const Home());
  }
}
