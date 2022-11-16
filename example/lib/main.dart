// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:m_sizer/m_sizer.dart';

void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MSizer(
      builder: (context, orientation) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sizer',
          theme: ThemeData.light(),
          home: Scaffold(
            body: Center(
              child: Container(
                height: 48.hPX,
                width: 313.wPX,
                color: Colors.red,
              ),
            ),
          ),
        );
      },
    );
  }
}
