import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:my_cv_flutter/utilities/userRouter.dart';
import '../pages/home_page.dart';

GoRouter router = GoRouter(
    routes: [
      GoRoute(
          name: '/', // importante perchè go_router cerca questo '/' path per iniziare
          path: '/',
          builder: (BuildContext context, GoRouterState state) => HomePage(),
          routes: user_router
      )
    ]
);