import '../../DATA_BASE/CONTACT_DATA_BASE.dart';
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

bool dataBasedaBormi({required String name}) {//+Abdulloh
  int t = 0;
  for (ContactDataBase data in data_base_contact) {
    t++;
    if (data.name == name) {
      if (data.password != null) {
        if (Password.PinAll(PIN: data.password!) == 'togri') {
          return true;
        } else {
          return false;
        }
      } else {
        return true;
      }
    }
  }
  return false;
}