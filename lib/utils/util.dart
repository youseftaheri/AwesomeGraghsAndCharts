import 'dart:ui';
import 'package:flutter/services.dart' show rootBundle;
import 'package:mp_chart/mp/core/adapter_android_mp.dart';

abstract class Util {
  static Future<String> loadAsset(String filename) async {
    return await rootBundle.loadString('assets/$filename');
  }

  static int currentTimeMillis() {
    return new DateTime.now().millisecondsSinceEpoch;
  }

  // ignore: non_constant_identifier_names
  static TypeFace REGULAR =
  TypeFace(fontFamily: "OpenSans", fontWeight: FontWeight.w400);

  // ignore: non_constant_identifier_names
  static TypeFace LIGHT =
  TypeFace(fontFamily: "OpenSans", fontWeight: FontWeight.w300);

  // ignore: non_constant_identifier_names
  static TypeFace BOLD =
  TypeFace(fontFamily: "OpenSans", fontWeight: FontWeight.w700);


  // ignore: non_constant_identifier_names
  static TypeFace EXTRA_BOLD =
  TypeFace(fontFamily: "OpenSans", fontWeight: FontWeight.w800);

  static double changeRange(double value){
    int intCount =  value.round().toString().length;
    for(int i=0; i<intCount; i++)
      value /= 10;
    return value;
  }
}