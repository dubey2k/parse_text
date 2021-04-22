RegExp bold = RegExp(r"\*");
RegExp italic = RegExp(r"\_");
RegExp cross = RegExp(r"\~");
RegExp mobile = RegExp(r"(\+[\d]{1,3}(\s))?([0-9]{10})");
RegExp email = RegExp(r"\w+([.-]?\w+)*@\w+([.-]?\w+)*(\.\w{2,3})+");
RegExp regSpliter = RegExp(r'(?<=(\s))');

bool isUrl(String text) {
  return text.startsWith("http:") || text.startsWith("https:") ? true : false;
}

int isBold(String text) {
  return bold.allMatches(text).length;
}

int isItalic(String text) {
  return italic.allMatches(text).length;
}

int isCross(String text) {
  return cross.allMatches(text).length;
}

bool isMob(String text) {
  return text.contains(mobile) ? true : false;
}

bool isEmail(String text) {
  return text.contains(email) ? true : false;
}

Map map = {
  'bold': false,
  'italic': false,
  'cross': false,
};
