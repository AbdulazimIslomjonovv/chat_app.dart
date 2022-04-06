List<ContactDataBase> data_base_contact = [];
class ContactDataBase {
  late String name;
  String? password;
  ContactDataBase({
    required this.name,
    this.password,
});
  String toString() {
    return 'name: $name\npassword: $password';
  }
}