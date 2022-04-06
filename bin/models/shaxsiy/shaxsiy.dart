import '../../DATA_BASE/DATA_BASE.dart';
import '../print/print.dart';

class Shaxsiy {
  static void shaxsiy({required String name}) {
    List<DATABASE> list = [];
    for (DATABASE data in DATA_BASE) {
      if (data.name == name) {
        list.add(data);
      }
    }
    Print.printt(list: list);
  }
}