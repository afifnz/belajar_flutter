import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterProvider with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void decrementCounter() {
    _counter--;
    notifyListeners();
  }

}


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CounterProvider())
      ],
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<CounterProvider>(
      builder: (context, counterProvider, child){
        return Scaffold(
          appBar: AppBar(title: Text('Provider')),
          body: Center(
            child: Column(
              children: <Widget>[
                Text(
                  '${counterProvider.counter}',
                  style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold)),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        onPressed: () {
                          counterProvider.decrementCounter();
                        },
                        child: Icon(Icons.remove)
                      ),
                      TextButton(
                        onPressed: () {
                          counterProvider.incrementCounter();
                        },
                        child: Icon(Icons.add)
                      )
                    ],
                  ),
                )
              ]
            ),
          )
        );
      },
    );
  }
}
