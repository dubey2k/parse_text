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

  +919999999990

  9999999999

  +91 9998887776

  email@email.com

  https://www.google.com/

  *This portion of Text will be Bold*

  _This portion of Text will be Italic_

  ~This portion of Text will be Crossed~
  ''';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ParseText Example'),
      ),
      body: Center(
        child: ParseText(
          size: 16,
          text: text,
          emailColor: Colors.red,
          urlColor: Colors.green,
          mobColor: Colors.orange,
        ),
      ),
    );
  }
}


//flutter packages pub publish