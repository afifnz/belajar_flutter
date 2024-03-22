import 'package:belajar_async/providers/app_title.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<ApplicationTitle>(
        create: (context) => ApplicationTitle(),
        child: Scaffold(
          body: Center(
            child: WrapWithCircularProgress(),
          ),
        ),
      ),
    );
  }
}

class WrapWithCircularProgress extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final appTitle = Provider.of<ApplicationTitle>(context, listen: true);
    return FutureBuilder<bool>(
        future: appTitle.isWelcomeAsync(appTitle.isWelcome),
        builder: (context, snapshot) {
          return snapshot.connectionState == ConnectionState.waiting
              ? const CircularProgressIndicator()
              : AppBody();
        }
      );
  }
}

class AppBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // final appTitle = Provider.of<ApplicationTitle>(context, listen: false);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 100, bottom: 100),
          child: Image.network('https://afifnz.github.io/polisam/assets/logo.png', scale: 10,),
        ),
        Container(
          padding: EdgeInsets.only(top: 25, bottom: 25),
          child: Consumer<ApplicationTitle>(
            builder: (context, applicationTitle, _) => Text(applicationTitle.title, style: const TextStyle(fontSize: 20),),
          ),
        ),
        Container(
          child: Consumer<ApplicationTitle>(
            builder: (context, applicationTitle, _) => TextButton(
              onPressed: () {
                applicationTitle.isWelcome = !applicationTitle.isWelcome;
              },
              child: const Text("Submit")
            )
          )
        )
      ],
    );
  }
}
