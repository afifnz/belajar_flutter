import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      floatingActionButton: FloatingActionButton(onPressed: (){
        showDialog(context: context, builder: (context){
          return AlertDialog(
            title: const Text("Konfirmasi"),
            content: const Text("Apakah anda akan menghapus semua data!"),
            actions: [
              TextButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: const Text("Tidak")),
              ElevatedButton(onPressed: (){
                Navigator.of(context).pop();
              }, child: const Text("Ya"))
            ],
          );
        });
      },
      child: Icon(Icons.clear),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
