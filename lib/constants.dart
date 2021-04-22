RegExp bold = RegExp(r"\*(.*)|([a-zA-Z0-9 ]+)\*");
RegExp italic = RegExp(r"\_(.*)|([\w\d ]+)\_");
RegExp cross = RegExp(r"\~(.*)|([\w\d ]+)\~");
RegExp mobile = RegExp(r"^[\+]?\d{10,12}");
RegExp regSpliter = RegExp(r'(?<=(\s))');
RegExp tempBold = RegExp(r'\*');

bool isUrl(String text) {
  return text.startsWith("http:") ||
          text.startsWith("https:") ||
          text.startsWith("www")
      ? true
      : false;
}

bool isBold(String text) {
  return text.contains(bold) ? true : false;
}

bool isTBold(String text) {
  return text.contains(bold) ? true : false;
}

bool isItalic(String text) {
  return text.contains(italic) ? true : false;
}

bool isCross(String text) {
  return text.contains(cross) ? true : false;
}

bool isMob(String text) {
  return text.contains(mobile) ? true : false;
}

Map map = {
    'bold': false,
    'italic': false,
    'cross': false,
  };