import 'dart:io';

import '../../DATA_BASE/CONTACT_DATA_BASE.dart';


class Password {
  static String PinAll({required String PIN}) {
    stdout.write('password: ');
    String password = stdin.readLineSync()!;
    if (password == PIN) {
      return 'togri';
    } else {
      return 'xato';
    }
  }
  static void AddPassword({required String name}) {
    for (ContactDataBase data in data_base_contact) {
      if (data.name == name) {
        stdout.write('enter new password: ');
        data.password = stdin.readLineSync()!;
        return;
      }
    }
  }

  static bool isTrue({required bool a}) {
    return a;
  }
}
