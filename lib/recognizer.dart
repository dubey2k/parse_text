import 'package:flutter/gestures.dart';
import 'package:url_launcher/url_launcher.dart';

TapGestureRecognizer launchCustom(String link, int type) {
  switch (type) {
    case 1:
      var tap = TapGestureRecognizer()
        ..onTap = () async {
          if (await canLaunch(link) != null) {
            await launch(link.substring(3));
          } else {
            throw 'Could not launch ${link}';
          }
        };
      return tap;
    case 5:
      var tap = TapGestureRecognizer()
        ..onTap = () async {
          if (await canLaunch(link) != null) {
            await launch('tel://${link.substring(3)}');
          } else {
            throw 'Could not launch ${link}';
          }
        };
      return tap;
    default:
      return null;
  }
}
