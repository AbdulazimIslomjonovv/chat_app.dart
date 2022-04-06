import '../chatting/chatting.dart';
import '../crud/create.dart';
import '../crud/read.dart';
import '../gal_almashtirish/gal_almashtirish.dart';
import '../password/password.dart';
import '../shaxsiy/shaxsiy.dart';

String currentName = '';
class ReadTxt {
  static void read_txt({required String txt}) {
    List<String> listTxt = List.from(txt.split(' '));
    if (listTxt[0].startsWith('-')) {
      GalAlmashtirish.galAlmashtirish(listTxt: listTxt);
    } else if (listTxt[0].startsWith('+')) {
      Create.create(string: listTxt[0]);
    } else if (listTxt[0] == '/read') {
      Read.read();
    } else if (listTxt[0] == ('/password')) {
      Password.AddPassword(name: currentName);
    } else if (listTxt[0].startsWith('/')) {
      Shaxsiy.shaxsiy(name: listTxt[0].substring(1));
    } else {
      Chatting.chatting(str: txt);
    }
  }
}