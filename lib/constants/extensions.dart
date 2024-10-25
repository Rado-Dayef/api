import 'package:flutter/material.dart';

extension NumExt on num {
  SizedBox get gap => SizedBox(
        width: toDouble(),
        height: toDouble(),
      );
}
