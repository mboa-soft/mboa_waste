import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mboa_waste/domain/auth/auth_provider.dart';
import 'package:mboa_waste/firebase_options.dart';

import 'domain/auth/bloc/auth_bloc.dart';
import 'screens/screens.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        home: BlocProvider(
          create: (context) => AuthBloc(provider: AuthProvider()),
          child: BlocConsumer<AuthBloc, AuthState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              if (state is LoggedIn) {
                return const Home();
              } else if (state is LoggedOut) {
                return const Login();
              } else {
                return Container();
              }
            },
          ),
        ));
  }
}
