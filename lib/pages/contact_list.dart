import 'package:flutter/material.dart';
import 'package:visiting_card/pages/add_new_contact.dart';
import 'package:visiting_card/providers/contact_provider.dart';

class ContactList extends StatefulWidget {
  static final String routeName = '/';

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {

  final provider = contactProvider();
  @override
  Widget build(BuildContext context) {
    provider.getAllContacts();
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List')
      ),
      body: ListView.builder(
          itemCount: provider.contacts.length,
          itemBuilder: (context, index){
            final contact = provider.contacts[index];
            return ListTile(
              title: Text(contact.contactName),
              subtitle: Text(contact.companyName),
            );
          },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, AddNewContact.routeName),
        child: Icon(Icons.add),
      ),
    );
  }
}
