import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view_model/news_view_model.dart';
import 'view/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => NewsViewModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'News',
        home: HomeScreen(),
      ),
    );
  }
}
