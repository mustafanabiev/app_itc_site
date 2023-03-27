
import 'package:flutter/material.dart';

import '../../modules/appsAndTeam/apps_and_teams_page.dart';
import '../../modules/home/view/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TheQuestionsPage(),
    );
  }
}
