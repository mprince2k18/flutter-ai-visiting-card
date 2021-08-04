class ContactModel {
  int id = -1;
  String contactName;
  String companyName;
  String designation;
  String mobileNumber;
  String emailAddress;
  String webSite;
  String streetAddress;
  bool favourite;

  ContactModel(
      {this.id = -1,
      required this.contactName,
      required this.companyName,
      this.designation = "",
      required this.mobileNumber,
      required this.emailAddress,
      required this.webSite,
      required this.streetAddress,
      this.favourite = false});

  @override
  String toString() {
    return 'ContactModel{id: $id, contactName: $contactName, companyName: $companyName, designation: $designation, mobileNumber: $mobileNumber, emailAddress: $emailAddress, webSite: $webSite, streetAddress: $streetAddress, favourite: $favourite}';
  }

}