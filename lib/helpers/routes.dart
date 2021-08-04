import 'package:visiting_card/pages/add_new_contact.dart';
import 'package:visiting_card/pages/card_scan.dart';
import 'package:visiting_card/pages/contact_details.dart';
import 'package:visiting_card/pages/contact_list.dart';

var routeMap = {
  ContactList.routeName : (context) => ContactList(),
  AddNewContact.routeName : (context) => AddNewContact(),
  ContactDetails.routeName : (context) => ContactDetails(),
  CardScan.routeName : (context) => CardScan(),
};