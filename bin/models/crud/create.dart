import '../../DATA_BASE/CONTACT_DATA_BASE.dart';
import '../read_txt/read_txt.dart';

class Create {
  static void create({required String string}) {
    if (dataBasedaYoqmi(name: string.substring(1))) {
      data_base_contact.add(ContactDataBase(name: string.substring(1)));
      currentName = string.substring(1);
    } else {
      print('bor odamni qayta kiritmoqchisiz!');
    }
  }
}

bool dataBasedaYoqmi({required String name}) {
  for (ContactDataBase data in data_base_contact) {
    if (data.name == name) {
      return false;
    }
  }
  return true;
}