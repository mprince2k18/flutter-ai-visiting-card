import 'package:flutter/material.dart';
import 'package:visiting_card/pages/add_new_contact.dart';
import 'package:visiting_card/pages/card_scan.dart';
import 'package:visiting_card/pages/contact_details.dart';
import 'package:visiting_card/pages/contact_list.dart';

import 'helpers/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: ContactList.routeName,
      routes: routeMap,
    );
  }
}
