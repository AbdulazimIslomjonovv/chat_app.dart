import 'dart:io';

import 'DATA_BASE/CONTACT_DATA_BASE.dart';
import 'models/read_txt/read_txt.dart';

void main() {
  String txt = '';
  while (true) {
    stdout.write('$currentName: ');
    txt = stdin.readLineSync()!;
    ReadTxt.read_txt(txt: txt);
  }
}