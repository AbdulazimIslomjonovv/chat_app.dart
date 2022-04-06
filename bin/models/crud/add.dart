import '../../DATA_BASE/DATA_BASE.dart';

class Add {
  static  void add({required String name, required String suhbat}) {
      DATA_BASE.add(DATABASE(name: name, sozi: {DateTime.now(): suhbat}));
  }
}