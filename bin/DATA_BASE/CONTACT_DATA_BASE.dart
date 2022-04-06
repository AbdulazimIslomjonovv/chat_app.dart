List<ContactDataBase> data_base_contact = [];
class ContactDataBase {
  late String name;
  String? password;
  late List<String> druzyalar;
  ContactDataBase({
    required this.name,
    this.password,
    required this.druzyalar,
});

  @override
  bool operator ==(Object other) {
    return other is ContactDataBase && name == other.name;
  }

  @override
  String toString() {
    return 'name: $name\npassword: $password\ndruzyalar: $druzyalar';
  }
}