import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:intl/intl.dart';

void main() {
  Intl.defaultLocale = 'id'; 
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    var faker = Faker();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Belajar Extract Widget")),
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index){
            return ChatItem(
              imageUrl: 'https://picsum.photos/id/$index/200/300',
              title: faker.person.name(),
              subTitle:faker.address.streetAddress(),
              trailing: DateFormat('jm').format(faker.date.dateTime()),);
          }
        )
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String subTitle;
  final String trailing;

  const ChatItem({super.key, required this.imageUrl, required this.title, required this.subTitle, required this.trailing});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Text(trailing),
    );
  }
}
