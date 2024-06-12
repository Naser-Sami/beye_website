// Package
import 'package:flutter/material.dart';

Size mq(context) => MediaQuery.of(context).size;
bool isHandset(context) => MediaQuery.of(context).size.width < 600;
bool isTablet(context) => MediaQuery.of(context).size.width < 1000;
bool isDesktop(context) => MediaQuery.of(context).size.width >= 1000;
