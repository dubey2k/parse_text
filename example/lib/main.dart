import 'package:flutter/material.dart';
import 'package:parse_text/parse_text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ParseText Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  String text = '''
  It is an Example text!!

  +919999999999

  999999999999

  https://www.google.com/

  *This portion of Text will be Bold*

  _This portion of Text will be Italic_

  ~This portion of Text will be Bold~
  ''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ParseText Example'),
      ),
      body: Center(
        child: ParseText(size: 16, text: text),
      ),
    );
  }
}


//flutter packages pub publish