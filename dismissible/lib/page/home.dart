import "package:faker/faker.dart";
import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final Faker faker = Faker();
    return Scaffold(
      appBar: AppBar(title: const Text("Dismissible")),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: 100,
        itemBuilder: (context, index) {
          return Dismissible(
            key: Key(index.toString()),
            direction: DismissDirection.endToStart,
            background: Container(
              alignment: Alignment.centerRight,
              color: Colors.red,
              child: Icon(Icons.delete, size: 25,),
              padding: EdgeInsets.only(right: 10),
            ),
            child: ListTile(
              leading: CircleAvatar(),
              title: Text(faker.person.name()),
              subtitle: Text(faker.lorem.sentence()),
            ),
            confirmDismiss: (direction){
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Konfirmasi"),
                    content: Text("Apakah anda yakin ingin menghapus"),
                    actions: [
                      TextButton(onPressed: (){
                        Navigator.of(context).pop(false);
                      }, child: Text("Tidak")),
                      TextButton(onPressed: (){
                        Navigator.of(context).pop(true);

                      }, child: Text("Ya"))
                    ],
                  );
                }
              );
            },
          );
        }
      )
    );
  }
}