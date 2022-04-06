import '../../DATA_BASE/DATA_BASE.dart';

class Read {
  static void read() {
    for (DATABASE data in DATA_BASE) {
      print(data);
    }
  }
}