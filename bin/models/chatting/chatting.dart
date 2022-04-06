import 'dart:io';

import '../../DATA_BASE/CONTACT_DATA_BASE.dart';
import '../crud/add.dart';
import '../read_txt/read_txt.dart';

class Chatting {
  static void chatting({required String str}) {
    while (!str.endsWith('.')) {
      stdout.write('=> ');
      str = str + ' ' + stdin.readLineSync()!;
    }
    Add.add(name: currentName, suhbat: str);
  }
}