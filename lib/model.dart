import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconModel {
  String? title, icon;

  IconModel({this.icon, this.title});
}

List<IconModel> iconList = [
  IconModel(icon: "images/1.svg", title: "Meeting"),
  IconModel(icon: "images/2.svg", title: "Discuss"),
  IconModel(icon: "images/3.svg", title: "Design"),
  IconModel(icon: "images/4.svg", title: "Development"),
  IconModel(icon: "images/5.svg", title: "Testing"),
  IconModel(icon: "images/6.svg", title: "Product"),
  IconModel(icon: "images/7.svg", title: "QA"),
  IconModel(icon: "images/8.svg", title: "Playing"),
  IconModel(icon: "images/9.svg", title: "Room"),
];
