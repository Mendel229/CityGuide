import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

width(context) => MediaQuery.of(context).size.width;
height(context) => MediaQuery.of(context).size.height;

route(context, widget, {bool close = false }) => close
    ? Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute(builder: (_)=>widget), (route) => false)
    :Navigator.of(context).push(MaterialPageRoute(builder: (_)=>widget));