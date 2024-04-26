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
            child: AppBody(),
          ),
        ),
      ),
    );
  }
}

class AppBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final appTitle = Provider.of<ApplicationTitle>(context, listen: true);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(top: 100, bottom: 100),
          child: Image.network('https://afifnz.github.io/polisam/assets/logo.png', scale: 10,),
        ),
        Container(
          padding: EdgeInsets.only(top: 25, bottom: 25),
          child: Text(appTitle.title, style: const TextStyle(fontSize: 20),),
        ),
        Container(
          child: ElevatedButton.icon(
            onPressed: () {
              print("on press");
              appTitle.isWelcome = !appTitle.isWelcome;
            },
            icon: FutureBuilder<bool>(
              future: appTitle.isWelcomeAsync(appTitle.isWelcome),
              builder: (context, snapshot) {
                print(snapshot.connectionState);
                return snapshot.connectionState == ConnectionState.waiting
                  ? Container(
                    width: 24,
                    height: 24,
                    padding: const EdgeInsets.all(2.0),
                    child: const CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 3,
                    ),
                  )
                  : const Icon(Icons.feedback);
              }
            ), 
            label: const Text("Submit")
          )
        )
      ],
    );
  }
}
