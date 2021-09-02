import 'package:flutter/material.dart';
import 'package:noticiasdeportivas/Screen/LoginScreen/InicioScreen.dart';

import 'Utils/constants.dart';
import 'Utils/routes.dart';
import 'Utils/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: aAppName,
      supportedLocales: [
        Locale(
          "en",
          "US",
        ),
        Locale(
          "he",
          "IL",
        ),
      ],
      theme: theme(),
      // ThemeData.dark().copyWith(
      //   // scaffoldBackgroundColor: bgColor,
      //   textTheme:
      //       GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(
      //     bodyColor: Colors.white,
      //   ),
      //   // canvasColor: secondaryColor,
      // ),
      initialRoute: InicioScreen.routeName,
      // initialRoute: Login.routeName,
      routes: routes,
    );
  }
}
