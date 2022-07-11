import 'package:flutter/material.dart';
import 'package:stteper/screen/step.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Stepper_S(),
      },
    ),
  );
}
