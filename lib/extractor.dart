import 'package:parse_text/constants.dart';

List<String> extractor(String text) {
  List<String> list = text.split(regSpliter);
  List<String> msg = [""];
  int size = 0;
  for (String s in list) {
    if (isUrl(s)) {
      msg.add("HT $s");
      msg.add("");
      size += 2;
    } else if (isBold(s)) {
      s = s.replaceAll('*', '');
      msg.add("BO $s");
      msg.add("");
      size += 2;
    } else if (isItalic(s)) {
      s = s.replaceAll('_', ' ');
      msg.add("IT $s");
      msg.add("");
      size += 2;
    } else if (isCross(s)) {
      s = s.replaceAll('~', ' ');
      msg.add("CR $s");
      msg.add("");
      size += 2;
    } else if (isMob(s)) {
      msg.add("MO $s");
      msg.add("");
      size += 2;
    } else {
      msg[size] += "$s";
    }
  }
  return msg;
}
