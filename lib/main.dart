import 'package:flutter/material.dart';
import 'package:testing2/user_data.dart';
import 'package:testing2/models/models.dart';
import 'package:testing2/screens/screens.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

List<Tweet> _availableTweets = TWEETS_DATA;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: NavScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) => NavScreen(),
      },
    );
  }
}
