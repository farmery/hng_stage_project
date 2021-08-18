import 'package:flutter/material.dart';

import 'first_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          FocusScopeNode currentFocus = FocusScope.of(context);
          if (!currentFocus.hasPrimaryFocus) {
            currentFocus.focusedChild!.unfocus();
          }
        },
        child: MaterialApp(
          title: 'Flutter Demo',
          darkTheme: ThemeData(
            brightness: Brightness.dark,
          ),
          debugShowCheckedModeBanner: false,
          home: FirstScreen(),
        ));
  }
}
