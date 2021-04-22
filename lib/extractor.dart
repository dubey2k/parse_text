import 'package:parse_text/constants.dart';

List<String> extractor(String text) {
  List<String> list = text.split(regSpliter);
  List<String> msg = [""];
  int size = 0;

  for (String s in list) {
    int tLen = 0;
    if (isUrl(s)) {
      msg.add("HT $s");
      msg.add("");
      size += 2;
    } else if ((tLen = isBold(s)) > 0) {
      if (tLen == 1) {
        s = s.replaceAll('*', '');
        if (map['bold']) {
          msg[size] += s;
          msg.add("");
          size += 1;
        } else {
          msg.add("BO $s");
          map['bold'] = !map['bold'];
          size += 1;
        }
      } else {
        s = s.replaceAll('*', '');
        msg.add("BO $s");
        msg.add("");
        size += 2;
      }
    } else if ((tLen = isItalic(s)) > 0) {
      if (tLen == 1) {
        s = s.replaceAll('_', '');
        if (map['italic']) {
          msg[size] += s;
          msg.add("");
          size += 1;
        } else {
          msg.add("IT $s");
          map['italic'] = !map['italic'];
          size += 1;
        }
      } else {
        s = s.replaceAll('_', '');
        msg.add("IT $s");
        msg.add("");
        size += 2;
      }
    } else if ((tLen = isCross(s)) > 0) {
      if (tLen == 1) {
        s = s.replaceAll('~', '');
        if (map['cross']) {
          msg[size] += s;
          msg.add("");
          size += 1;
        } else {
          msg.add("CR $s");
          map['cross'] = !map['cross'];
          size += 1;
        }
      } else {
        s = s.replaceAll('~', '');
        msg.add("CR $s");
        msg.add("");
        size += 2;
      }
    } else if (isMob(s)) {
      msg.add("MO $s");
      msg.add("");
      size += 2;
    } else if (isEmail(s)) {
      msg.add("EM $s");
      msg.add("");
      size += 2;
    } else {
      msg[size] += "$s";
    }
  }
  return msg;
}
