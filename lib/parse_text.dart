library parse_text;

import 'package:flutter/material.dart';
import 'package:parse_text/extractor.dart';
import 'package:parse_text/recognizer.dart';

class ParseText extends StatelessWidget {
  ParseText({@required this.size,
    @required this.text,
    this.color: const Color(0xFF424242),
    this.wt:FontWeight.normal,
    this.align,
    this.maxLine,
    this.style});

  final double size;
  final String text;
  final Color color;
  final FontWeight wt;
  final FontStyle style;
  final TextAlign align;
  final int maxLine;

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
            TextDecoration dec = TextDecoration.none;
            String txt = inputList[idx];
            String ss = inputList[idx];
            if (ss.contains("HT")) {
              txtColor = Colors.blue;
              weight = FontWeight.w600;
              index = 3;
              type = 1;
            } else if (ss.contains("BO")) {
              weight = FontWeight.bold;
              index = 3;
              type = 2;
            } else if (ss.contains("IT")) {
              fontStyle = FontStyle.italic;
              index = 3;
              type = 3;
            } else if (ss.contains("CR")) {
              dec = TextDecoration.lineThrough;
              index = 3;
              type = 4;
            } else if (ss.contains("MO")) {
              txtColor = Colors.blue;
              weight = FontWeight.w600;
              index = 3;
              type = 5;
            }
            return TextSpan(
              recognizer: launchCustom(inputList[idx], type),
              text: txt.substring(index),
              style: TextStyle(
                  color: txtColor,
                  fontSize: size,
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