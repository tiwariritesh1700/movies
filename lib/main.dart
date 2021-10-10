import 'package:flutter/material.dart';
import 'package:movies/common/database/app_database.dart';
import 'package:movies/movies/ui/movies_home_view.dart';

late AppDatabase appDatabase;

void main() {
  appDatabase = AppDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Movies',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MoviesHomeView(),
    );
  }
}
