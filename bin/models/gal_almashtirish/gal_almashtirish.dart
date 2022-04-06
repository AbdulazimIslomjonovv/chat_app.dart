import '../../DATA_BASE/DATA_BASE.dart';
import '../password/password.dart';
import '../read_txt/read_txt.dart';

class GalAlmashtirish {
  static void galAlmashtirish({required List<String> listTxt}) {
    if (dataBasedaBormi(name: listTxt[0].substring(1))) {
      currentName = listTxt[0].substring(1);
    } else {
      print('yoq name ga otmoqchisiz!');
    }
  }
}

bool dataBasedaBormi({required String name}) {
  int t = 0;
  for (DATABASE data in DATA_BASE) {
    t++;
    if (data.name == name) {
      if (data.password != null) {
        aa = t;
      }
      return true;
    }
  }
  return false;
}