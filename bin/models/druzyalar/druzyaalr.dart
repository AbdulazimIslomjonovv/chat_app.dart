import 'dart:io';

import '../../DATA_BASE/CONTACT_DATA_BASE.dart';
import '../read_txt/read_txt.dart';

class Druzyalar {
  static void addDruzya() {
    stdout.write('enter names: ');
    String str = stdin.readLineSync()!;
    List<String> druzyalar = [];
    List<String> listStr = List.from(str.replaceAll(' ', '').split(','));
    for (int i = 0; i < data_base_contact.length; i++) {
      if (data_base_contact[i].name == currentName) {
        for (int j = 0; j < listStr.length; j++) {
          if (bormi(name: listStr[j])) {
            druzyalar.add(listStr[j]);
          }
        }
        data_base_contact[i].druzyalar = druzyalar;
        return;
      }
    }
  }

  static void readDruzya() {
    for (int i = 0; i < data_base_contact.length; i++) {
      if (data_base_contact[i].name == currentName) {
        print(data_base_contact[i].druzyalar);
        break;
      }
    }
  }
}

bool bormi({required String name}) {
  for (ContactDataBase data in data_base_contact) {
    if (data.name == name) {
      return true;
    }
  }
  return false;
}















