import '../../DATA_BASE/DATA_BASE.dart';
import '../read_txt/read_txt.dart';

class Create {
  static void create({required String string}) {
    if (dataBasedaYoqmi(name: string.substring(1))) {
      DATA_BASE.add(DATABASE(name: string.substring(1), sozi: {DateTime.now(): 'created'}));
      currentName = string.substring(1);
    } else {
      print('bor odamni qayta kiritmoqchisiz!');
    }
  }
}
bool dataBasedaYoqmi({required String name}) {
  for (DATABASE data in DATA_BASE) {
    if (data.name == name) {
      return false;
    }
  }
  return true;
}