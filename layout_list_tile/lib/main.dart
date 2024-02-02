import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class Person {
    String name;
    String job;
    String createdAt;

    Person({
        required this.name,
        required this.job,
        required this.createdAt,
    });

}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Person> myPerson = [
      Person(name: "Achmad Afiffudin Nurzein", job: "Software Developer", createdAt: "10:20"),
      Person(name: "Agustiar Batubara", job: "Defender", createdAt: "15:20"),
      Person(name: "Budi Sudarsono", job: "Striker", createdAt: "16:20"),
      Person(name: "Slamet Sampurno", job: "Defender", createdAt: "18:20")
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Layout List Tile')),
        body: ListView.builder(
          itemBuilder: (context, index){
            var person = myPerson[index];
            return ListTile(
              title: Text(person.name),
              subtitle: Text(person.job),
              leading: const CircleAvatar(),
              trailing: Text(person.createdAt),
              tileColor: index % 2 == 1 ? Colors.grey[100]: Colors.white,
            );
          },
          itemCount: myPerson.length
        ),
      ),
    );
  }
}