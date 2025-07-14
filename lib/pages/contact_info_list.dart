// Task 2: Contact Info List
import 'package:flutter/material.dart';

class ContactList extends StatelessWidget {
  const ContactList({super.key});

  @override
  Widget build(BuildContext context) {
    final contacts = [
      {'name': 'Alice Johnson', 'phone': '(123) 456-7890'},
      {'name': 'Bob Smith', 'phone': '(234) 567-8901'},
      {'name': 'Charlie Brown', 'phone': '(345) 678-9012'},
      {'name': 'Diana Prince', 'phone': '(456) 789-0123'},
      {'name': 'Ethan Hunt', 'phone': '(567) 890-1234'},
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Contact List')),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: ListTile(
              leading: const Icon(Icons.person, color: Colors.blue),
              title: Text(contacts[index]['name']!),
              subtitle: Text(contacts[index]['phone']!),
              trailing: IconButton(
                icon: const Icon(Icons.call, color: Colors.green),
                onPressed: () {},
              ),
            ),
          );
        },
      ),
    );
  }
}
