import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

DateFormat dateFormat = DateFormat('dd.MMM.yy');
const String kAppName = 'Anabolix';
const String placeholderToken = '';
const String introText = '';

// Colors
const kPrimaryDark = Color(0xFF263844);
const kPrimaryLight = Color(0xFF354B58);
const kPrimaryVeryLight = Color(0xFF607786);
const kPrimaryAccent = Color(0xFFFA8235);
const kSecondaryAccent = Color(0xFF629C5B);
const kDarkGrey = Color(0xFF404040);
const kMediumGrey = Color(0xFF646464);
const kLightGrey = Color(0xFF979797);

// Text Styles
const kButtonTitleTextStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.w700,
);

const kLogoTextDark = TextStyle(
  color: kPrimaryDark,
  fontFamily: 'Conthrax',
  fontSize: 16,
);

// Field Variables

const double fieldHeight = 55;
const double smallFieldHeight = 40;
const double inputFieldBottomMargin = 30;
const double inputFieldSmallBottomMargin = 0;
const EdgeInsets fieldPadding = const EdgeInsets.symmetric(
  horizontal: 15,
);
const EdgeInsets largeFieldPadding = const EdgeInsets.symmetric(
  horizontal: 15,
  vertical: 15,
);

// Box Decorations

BoxDecoration fieldDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  color: Colors.grey[200],
);

BoxDecoration disabledFieldDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(5),
  color: Colors.grey[100],
);
