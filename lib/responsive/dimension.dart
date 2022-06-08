// 핸드폰, 태블릿, 데스크탑 사이즈


import 'package:flutter/material.dart';

const mobileWidth = 480;
const tabletWidth = 1023;

double media(context) {
  final currentWidth = MediaQuery.of(context).size.width;
  return currentWidth;
}
