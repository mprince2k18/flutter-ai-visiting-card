import 'package:flutter/material.dart';
import 'package:visiting_card/pages/add_new_contact.dart';

class ContactList extends StatefulWidget {
  static final String routeName = '/';

  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List')
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, AddNewContact.routeName),
        child: Icon(Icons.add),
      ),
    );
  }
}
