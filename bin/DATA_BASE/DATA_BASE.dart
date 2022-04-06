List<DATABASE> DATA_BASE = [];

class DATABASE {
  late String name;
  late Map<DateTime, String> sozi;
  String? password;

  DATABASE({
    required this.name,
    required this.sozi,
    this.password,
  });

  String toString() {
    return 'name: $name\nsozi: $sozi\n-----------\n';
  }
}
