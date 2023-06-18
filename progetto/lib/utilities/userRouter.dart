import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import '../pages/contactMe.dart';
import '../pages/description.dart';
import '../pages/educationAndTraining.dart';
import '../pages/workExperience.dart';
import 'constants.dart';

List<GoRoute> user_router=[
  GoRoute(
      name: CONTACTME,
      path: CONTACTME,
      builder: (BuildContext context, GoRouterState state) => ContactMePage()
  ),
  GoRoute(
      name: DESCRIPTION,
      path: DESCRIPTION,
      builder: (BuildContext context, GoRouterState state) => DescriptionPage()
  ),
  GoRoute(
      name: SCHOOLANDDESCRIPTION,
      path: SCHOOLANDDESCRIPTION,
      builder: (BuildContext context, GoRouterState state) => SchoolAndTrainingPage()
  ),
  GoRoute(
      name: WORKEXPERIENCE,
      path: WORKEXPERIENCE,
      builder: (BuildContext context, GoRouterState state) => WorkExperiencePage()
  ),
];