import 'dart:io';

import '../../DATA_BASE/DATA_BASE.dart';

late int aa;
String? PIN = DATA_BASE[aa].password;

class Password {
  static void PinAll({newPin1 = 'pin123', required bool bl}) {
    stdout.write('password: ');
    String password = stdin.readLineSync()!;
      if (password == PIN) {
        if (bl) {
          stdout.write('enter new password: ');
          PIN = stdin.readLineSync()!;
        }
      }
  }
}
