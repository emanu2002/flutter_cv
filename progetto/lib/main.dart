import 'package:flutter/material.dart';
import 'package:my_cv_flutter/provider/user_provider.dart';
import 'package:my_cv_flutter/utilities/route.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
      MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => UserProvider()),
          ],
          child: MyHomePageCV()
      )
  );
}

class MyHomePageCV extends StatelessWidget {
  const MyHomePageCV({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        theme: ThemeData(
          fontFamily: 'Roboto',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routerConfig: router
    );
  }
}
