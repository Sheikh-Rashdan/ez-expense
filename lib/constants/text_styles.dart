import 'package:flutter/material.dart';

class KTextStyles {
  // font name
  static const String fontFamily = "Stack Sans Text";

  // base style
  static const TextStyle _baseTextStyle = TextStyle(fontFamily: fontFamily);

  // regular
  static final TextStyle regular10 = _baseTextStyle.copyWith(fontSize: 10);
  static final TextStyle regular12 = _baseTextStyle.copyWith(fontSize: 12);
  static final TextStyle regular16 = _baseTextStyle.copyWith(fontSize: 16);
  static final TextStyle regular22 = _baseTextStyle.copyWith(fontSize: 22);
  static final TextStyle regular28 = _baseTextStyle.copyWith(fontSize: 28);
  static final TextStyle regular36 = _baseTextStyle.copyWith(fontSize: 36);
  static final TextStyle regular40 = _baseTextStyle.copyWith(fontSize: 40);

  // thin
  static final TextStyle thin10 = regular10.copyWith(
    fontWeight: FontWeight.w200,
  );
  static final TextStyle thin12 = regular12.copyWith(
    fontWeight: FontWeight.w200,
  );
  static final TextStyle thin16 = regular16.copyWith(
    fontWeight: FontWeight.w200,
  );
  static final TextStyle thin22 = regular22.copyWith(
    fontWeight: FontWeight.w200,
  );
  static final TextStyle thin28 = regular28.copyWith(
    fontWeight: FontWeight.w200,
  );
  static final TextStyle thin36 = regular36.copyWith(
    fontWeight: FontWeight.w200,
  );
  static final TextStyle thin40 = regular40.copyWith(
    fontWeight: FontWeight.w200,
  );

  // light
  static final TextStyle light10 = regular10.copyWith(
    fontWeight: FontWeight.w300,
  );
  static final TextStyle light12 = regular12.copyWith(
    fontWeight: FontWeight.w300,
  );
  static final TextStyle light16 = regular16.copyWith(
    fontWeight: FontWeight.w300,
  );
  static final TextStyle light22 = regular22.copyWith(
    fontWeight: FontWeight.w300,
  );
  static final TextStyle light28 = regular28.copyWith(
    fontWeight: FontWeight.w300,
  );
  static final TextStyle light36 = regular36.copyWith(
    fontWeight: FontWeight.w300,
  );
  static final TextStyle light40 = regular40.copyWith(
    fontWeight: FontWeight.w300,
  );

  // medium
  static final TextStyle medium10 = regular10.copyWith(
    fontWeight: FontWeight.w500,
  );
  static final TextStyle medium12 = regular12.copyWith(
    fontWeight: FontWeight.w500,
  );
  static final TextStyle medium16 = regular16.copyWith(
    fontWeight: FontWeight.w500,
  );
  static final TextStyle medium22 = regular22.copyWith(
    fontWeight: FontWeight.w500,
  );
  static final TextStyle medium28 = regular28.copyWith(
    fontWeight: FontWeight.w500,
  );
  static final TextStyle medium36 = regular36.copyWith(
    fontWeight: FontWeight.w500,
  );
  static final TextStyle medium40 = regular40.copyWith(
    fontWeight: FontWeight.w500,
  );

  // bold
  static final TextStyle bold10 = regular10.copyWith(
    fontWeight: FontWeight.w600,
  );
  static final TextStyle bold12 = regular12.copyWith(
    fontWeight: FontWeight.w600,
  );
  static final TextStyle bold16 = regular16.copyWith(
    fontWeight: FontWeight.w600,
  );
  static final TextStyle bold22 = regular22.copyWith(
    fontWeight: FontWeight.w600,
  );
  static final TextStyle bold28 = regular28.copyWith(
    fontWeight: FontWeight.w600,
  );
  static final TextStyle bold36 = regular36.copyWith(
    fontWeight: FontWeight.w600,
  );
  static final TextStyle bold40 = regular40.copyWith(
    fontWeight: FontWeight.w600,
  );
}
