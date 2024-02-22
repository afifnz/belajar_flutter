import 'package:flutter/material.dart';


class First extends StatelessWidget {

  const First({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Routes"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text("Second Page", style: TextStyle(fontSize: 50),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
              children: [
                OutlinedButton(
                  onPressed: (){
                    Navigator.of(context).pop();
                  },
                  child: const Text("<< Back", style: TextStyle(fontSize: 30))
                ),
                OutlinedButton(
                  onPressed: (){
                    Navigator.of(context).pushNamed('/second');
                  },
                  child: const Text("Next >>", style: TextStyle(fontSize: 30))
                )
              ],
            )
          ],
        )
      ),
    );
  }
}