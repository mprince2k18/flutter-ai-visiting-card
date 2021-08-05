import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:visiting_card/helpers/validation_error_message.dart';
import 'package:visiting_card/models/contact_model.dart';
import 'package:visiting_card/providers/contact_provider.dart';

class AddNewContact extends StatefulWidget {
  static final String routeName = '/add_new_contact';

  @override
  _AddNewContactState createState() => _AddNewContactState();
}

class _AddNewContactState extends State<AddNewContact> {

  final _formKey = GlobalKey<FormState>();
  final _contactNameController = TextEditingController();
  final _contactNumberController = TextEditingController();
  final _contactDesignationController = TextEditingController();
  final _contactCompanyNameController = TextEditingController();
  final _contactEmailController = TextEditingController();
  final _contactWebsiteController = TextEditingController();
  final _contactAddressController = TextEditingController();

  @override
  void dispose(){
    _contactNameController.dispose();
    _contactNumberController.dispose();
    _contactDesignationController.dispose();
    _contactCompanyNameController.dispose();
    _contactEmailController.dispose();
    _contactWebsiteController.dispose();
    _contactAddressController.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Contact'),
        actions: [
          IconButton(
              onPressed: _saveContact,
              icon: Icon(Icons.save)
          )
        ],
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(12),
          children: [
            TextFormField(
              keyboardType: TextInputType.name,
              controller: _contactNameController,
              decoration: InputDecoration(
                labelText: 'Enter your name',
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return empty_error_message;
                }else{
                  return null;
                }
              },
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              controller: _contactNumberController,
              decoration: InputDecoration(
                labelText: 'Enter contact number',
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return empty_error_message;
                }else if(value.length < 11){
                  return length_error_message;
                }
                else{
                  return null;
                }
              },
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: _contactDesignationController,
              decoration: InputDecoration(
                labelText: 'Enter designation',
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return empty_error_message;
                }else{
                  return null;
                }
              },
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              controller: _contactCompanyNameController,
              decoration: InputDecoration(
                labelText: 'Enter company name',
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return empty_error_message;
                }else{
                  return null;
                }
              },
            ),
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: _contactEmailController,
              decoration: InputDecoration(
                labelText: 'Enter email address',
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return empty_error_message;
                }else{
                  return null;
                }
              },
            ),
            TextFormField(
              keyboardType: TextInputType.url,
              controller: _contactWebsiteController,
              decoration: InputDecoration(
                labelText: 'Enter website',
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return empty_error_message;
                }else{
                  return null;
                }
              },
            ),
            TextFormField(
              keyboardType: TextInputType.streetAddress,
              controller: _contactAddressController,
              decoration: InputDecoration(
                labelText: 'Enter street address',
              ),
              validator: (value){
                if(value == null || value.isEmpty){
                  return empty_error_message;
                }else{
                  return null;
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  void _saveContact() {
    if(_formKey.currentState!.validate()){
      final contact = ContactModel(
          contactName: _contactNameController.text,
          companyName: _contactCompanyNameController.text,
          mobileNumber: _contactNumberController.text,
          emailAddress: _contactEmailController.text,
          webSite: _contactWebsiteController.text,
          streetAddress: _contactAddressController.text);

      final provider = contactProvider();
      provider.addContact(contact);
      Navigator.pop(context);
    }
  }
}
