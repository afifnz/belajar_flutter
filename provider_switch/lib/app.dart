import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './pages/home.dart';
import './providers/app_color_provider.dart';


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ApplicationColor())
      ],
      child: MaterialApp(
        home: Home()
      ),
    );
  }
}