import 'package:flutter/material.dart';


class Second extends StatelessWidget {

  const Second({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Navigation"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("First Page", style: TextStyle(fontSize: 50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [
                OutlinedButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: const Text("<< Back", style: TextStyle(fontSize: 30))
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}