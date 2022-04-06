import 'dart:io';

import 'models/read_txt/read_txt.dart';

void main() {
  String txt = '';
  while (true) {
    stdout.write('$currentName: ');
    txt = stdin.readLineSync()!;
    ReadTxt.read_txt(txt: txt);
  }
}