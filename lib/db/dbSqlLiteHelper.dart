import 'package:visiting_card/models/contact_model.dart';

class dbSqlLiteHelper{
  static void addContact(ContactModel contactModel){
    // add to db
 }

 //get all data
 static List<ContactModel> getAllContacts(){
    return <ContactModel>[
      ContactModel(contactName: "prince",
                   companyName: "STIT",
                   mobileNumber: "4455454",
                   emailAddress: "prince@mail.com",
                   webSite: "prince.com",
                   streetAddress: "Dhaka, Bangladesh"),

      ContactModel(contactName: "Chester",
                   companyName: "LP",
                   mobileNumber: "0455454",
                   emailAddress: "chester@mail.com",
                   webSite: "chester.com",
                   streetAddress: "LA, USA"),

      ContactModel(contactName: "Chester",
                   companyName: "LP",
                   mobileNumber: "0455454",
                   emailAddress: "chester@mail.com",
                   webSite: "chester.com",
                   streetAddress: "LA, USA"),
    ];
 }

}