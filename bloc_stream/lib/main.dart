import 'package:bloc_stream/color_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  ColorBloc bloc = ColorBloc();

  @override
  void dispose(){
    bloc.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
        FloatingActionButton(
            backgroundColor: Colors.amber,
            onPressed: () {
              bloc.eventSink.add(ColorEvent.to_amber);
            }),
        SizedBox(
          width: 10,
        ),
        FloatingActionButton(
            backgroundColor: Colors.lightBlue,
            onPressed: () {
              bloc.eventSink.add(ColorEvent.to_light_blue);
            })
      ]),
      appBar: AppBar(
        title: Text('BloC tanpa library'),
      ),
      body: Center(
          child: StreamBuilder(
              stream: bloc.stateStream,
              initialData: Colors.amber,
              builder: (context, snapshot) {
                return AnimatedContainer(
                  width: 100,
                  height: 100,
                  color: snapshot.data,
                  duration: Duration(milliseconds: 500),
                );
              })),
    ));
  }
}
