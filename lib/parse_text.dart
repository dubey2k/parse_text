library parse_text;

import 'package:flutter/material.dart';
import 'package:parse_text/extractor.dart';
import 'package:parse_text/recognizer.dart';

class ParseText extends StatelessWidget {
  ParseText({
    @required this.size,
    @required this.text,
    this.color: const Color(0xFF424242),
    this.wt: FontWeight.normal,
    this.align,
    this.maxLine,
    this.style: FontStyle.normal,
    //email
    this.emailColor: Colors.blue,
    this.emailFW: FontWeight.w600,
    this.emailSize,
    this.emailStyle: FontStyle.normal,
    //mobile
    this.mobColor: Colors.blue,
    this.mobFW: FontWeight.w600,
    this.mobSize,
    this.mobStyle: FontStyle.normal,
    //url
    this.urlColor: Colors.blue,
    this.urlFW: FontWeight.w600,
    this.urlSize,
    this.urlStyle: FontStyle.normal,
    //bold
    this.boldColor: const Color(0xFF424242),
    this.boldFW: FontWeight.bold,
    this.boldSize,
    this.boldStyle: FontStyle.normal,
    //italic
    this.italicColor: const Color(0xFF424242),
    this.italicFW: FontWeight.normal,
    this.italicSize,
    //cross
    this.crossColor: const Color(0xFF424242),
    this.crossFW: FontWeight.normal,
    this.crossSize,
    this.crossStyle: FontStyle.normal,
  });

  /// Set size of normal text
  final double size;

  /// Set input text that would be parsed
  final String text;

  /// Set Color of normal text
  final Color color;

  /// Set FontWeight of normal text
  final FontWeight wt;

  /// Set FontStyle of normal text
  final FontStyle style;

  /// Set TextAlign of text
  final TextAlign align;

  /// Set maxLine of text
  final int maxLine;

  /// Set Color of detected email text
  final Color emailColor;

  /// Set FontWeight of detected email text
  final FontWeight emailFW;

  /// Set Size of detected email text
  final double emailSize;

  /// Set FontStyle of detected email text
  final FontStyle emailStyle;

  /// Set Color of detected Mobile text
  final Color mobColor;

  /// Set FontWeight of detected email text
  final FontWeight mobFW;

  /// Set Size of detected email text
  final double mobSize;

  /// Set FontStyle of detected email text
  final FontStyle mobStyle;

  /// Set Color of detected url text
  final Color urlColor;

  /// Set FontWeight of detected url text
  final FontWeight urlFW;

  /// Set Size of detected url text
  final double urlSize;

  /// Set FontStyle of detected url text
  final FontStyle urlStyle;

  /// Set Color of detected Bold text
  final Color boldColor;

  /// Set FontWeight of detected Bold text
  final FontWeight boldFW;

  /// Set Size of detected Bold text
  final double boldSize;

  /// Set FontStyle of detected Bold text
  final FontStyle boldStyle;

  /// Set Color of detected Italic text
  final Color italicColor;

  /// Set FontWeight of detected Italic text
  final FontWeight italicFW;

  /// Set Size of detected Italic text
  final double italicSize;

  /// Set Color of detected Crossed text
  final Color crossColor;

  /// Set FontWeight of detected Crossed text
  final FontWeight crossFW;

  /// Set Size of detected Crossed text
  final double crossSize;

  /// Set FontStyle of detected Crossed text
  final FontStyle crossStyle;

  @override
  Widget build(BuildContext context) {
    List<String> inputList = extractor(text ?? "");
    return Text.rich(
      TextSpan(
        children: List.generate(
          inputList.length,
          (idx) {
            int index = 0;
            int type = 0;
            FontWeight weight = wt;
            Color txtColor = color;
            FontStyle fontStyle = style;
            double tSize = size;
            TextDecoration dec = TextDecoration.none;
            String txt = inputList[idx];
            String ss = inputList[idx].length > 2
                ? inputList[idx].substring(0, 2)
                : inputList[idx];
            switch (ss) {
              case "HT":
                txtColor = urlColor;
                weight = urlFW;
                fontStyle = urlStyle;
                tSize = urlSize ?? size;
                index = 3;
                type = 1;
                break;
              case "BO":
                txtColor = boldColor;
                weight = boldFW;
                fontStyle = boldStyle;
                tSize = boldSize ?? size;
                index = 3;
                type = 2;
                break;
              case "IT":
                txtColor = italicColor;
                weight = italicFW;
                fontStyle = FontStyle.italic;
                tSize = italicSize ?? size;
                index = 3;
                type = 3;
                break;
              case "CR":
                txtColor = crossColor;
                weight = crossFW;
                fontStyle = crossStyle;
                tSize = crossSize ?? size;
                dec = TextDecoration.lineThrough;
                index = 3;
                type = 4;
                break;
              case "MO":
                txtColor = mobColor;
                weight = mobFW;
                fontStyle = mobStyle;
                tSize = mobSize ?? size;
                index = 3;
                type = 5;
                break;
              case "EM":
                txtColor = emailColor;
                weight = emailFW;
                fontStyle = emailStyle;
                tSize = urlSize ?? size;
                index = 3;
                type = 6;
                break;
            }

            return TextSpan(
              recognizer: launchCustom(inputList[idx], type),
              text: txt.substring(index),
              style: TextStyle(
                  color: txtColor,
                  fontSize: tSize,
                  fontStyle: fontStyle,
                  fontWeight: weight,
                  decoration: dec),
            );
          },
        ),
      ),
      textAlign: align,
      maxLines: maxLine,
    );
  }
}
