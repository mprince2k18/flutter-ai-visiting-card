import 'package:flutter/foundation.dart';
import 'package:visiting_card/db/dbSqlLiteHelper.dart';
import 'package:visiting_card/models/contact_model.dart';

class contactProvider with ChangeNotifier{

  List <ContactModel> _contactList = [];

  List <ContactModel> get contacts => _contactList; // getter method

  void addContact(ContactModel contactModel){
    dbSqlLiteHelper.addContact(contactModel);
  }

  void getAllContacts(){
    _contactList = dbSqlLiteHelper.getAllContacts();
    notifyListeners();
  }


}