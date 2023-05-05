import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import '../pages/contactMe.dart';
import 'constants.dart';

List<GoRoute> user_router=[
  GoRoute(
      name: CONTACTME,
      path: CONTACTME,
      builder: (BuildContext context, GoRouterState state) => ContactMePage()
  ),
];