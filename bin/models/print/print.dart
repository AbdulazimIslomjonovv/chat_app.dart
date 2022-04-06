import '../../DATA_BASE/DATA_BASE.dart';

class Print {
  static void printt({required List<DATABASE> list}) {
    for (DATABASE data in list) {
      print(data);
    }
  }
}