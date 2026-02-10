import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract final class MyText {
  // 内部工具：字重映射
  static FontWeight _w(int w) {
    switch (w) {
      case 1:
        return FontWeight.w100;
      case 2:
        return FontWeight.w200;
      case 3:
        return FontWeight.w300;
      case 4:
        return FontWeight.w400;
      case 5:
        return FontWeight.w500;
      case 6:
        return FontWeight.w600;
      case 7:
        return FontWeight.w700;
      case 8:
        return FontWeight.w800;
      case 9:
        return FontWeight.w900;
      default:
        return FontWeight.normal;
    }
  }

  // 自动生成 getter（核心生成函数）
  static TextStyle _g(int w, double s) =>
      TextStyle(fontSize: s.sp, fontWeight: _w(w));

  // =======================
  // w1 (100)
  // =======================
  static TextStyle get w1_8 => _g(1, 8);
  static TextStyle get w1_9 => _g(1, 9);
  static TextStyle get w1_10 => _g(1, 10);
  static TextStyle get w1_11 => _g(1, 11);
  static TextStyle get w1_12 => _g(1, 12);
  static TextStyle get w1_13 => _g(1, 13);
  static TextStyle get w1_14 => _g(1, 14);
  static TextStyle get w1_15 => _g(1, 15);
  static TextStyle get w1_16 => _g(1, 16);
  static TextStyle get w1_17 => _g(1, 17);
  static TextStyle get w1_18 => _g(1, 18);
  static TextStyle get w1_19 => _g(1, 19);
  static TextStyle get w1_20 => _g(1, 20);
  static TextStyle get w1_21 => _g(1, 21);
  static TextStyle get w1_22 => _g(1, 22);
  static TextStyle get w1_23 => _g(1, 23);
  static TextStyle get w1_24 => _g(1, 24);
  static TextStyle get w1_25 => _g(1, 25);
  static TextStyle get w1_26 => _g(1, 26);
  static TextStyle get w1_27 => _g(1, 27);
  static TextStyle get w1_28 => _g(1, 28);
  static TextStyle get w1_29 => _g(1, 29);
  static TextStyle get w1_30 => _g(1, 30);
  static TextStyle get w1_31 => _g(1, 31);
  static TextStyle get w1_32 => _g(1, 32);
  static TextStyle get w1_33 => _g(1, 33);
  static TextStyle get w1_34 => _g(1, 34);
  static TextStyle get w1_35 => _g(1, 35);
  static TextStyle get w1_36 => _g(1, 36);
  static TextStyle get w1_37 => _g(1, 37);
  static TextStyle get w1_38 => _g(1, 38);

  // =======================
  // w2 (200)
  // =======================
  static TextStyle get w2_8 => _g(2, 8);
  static TextStyle get w2_9 => _g(2, 9);
  static TextStyle get w2_10 => _g(2, 10);
  static TextStyle get w2_11 => _g(2, 11);
  static TextStyle get w2_12 => _g(2, 12);
  static TextStyle get w2_13 => _g(2, 13);
  static TextStyle get w2_14 => _g(2, 14);
  static TextStyle get w2_15 => _g(2, 15);
  static TextStyle get w2_16 => _g(2, 16);
  static TextStyle get w2_17 => _g(2, 17);
  static TextStyle get w2_18 => _g(2, 18);
  static TextStyle get w2_19 => _g(2, 19);
  static TextStyle get w2_20 => _g(2, 20);
  static TextStyle get w2_21 => _g(2, 21);
  static TextStyle get w2_22 => _g(2, 22);
  static TextStyle get w2_23 => _g(2, 23);
  static TextStyle get w2_24 => _g(2, 24);
  static TextStyle get w2_25 => _g(2, 25);
  static TextStyle get w2_26 => _g(2, 26);
  static TextStyle get w2_27 => _g(2, 27);
  static TextStyle get w2_28 => _g(2, 28);
  static TextStyle get w2_29 => _g(2, 29);
  static TextStyle get w2_30 => _g(2, 30);
  static TextStyle get w2_31 => _g(2, 31);
  static TextStyle get w2_32 => _g(2, 32);
  static TextStyle get w2_33 => _g(2, 33);
  static TextStyle get w2_34 => _g(2, 34);
  static TextStyle get w2_35 => _g(2, 35);
  static TextStyle get w2_36 => _g(2, 36);
  static TextStyle get w2_37 => _g(2, 37);
  static TextStyle get w2_38 => _g(2, 38);

  // =======================
  // w3 (300)
  // =======================
  static TextStyle get w3_8 => _g(3, 8);
  static TextStyle get w3_9 => _g(3, 9);
  static TextStyle get w3_10 => _g(3, 10);
  static TextStyle get w3_11 => _g(3, 11);
  static TextStyle get w3_12 => _g(3, 12);
  static TextStyle get w3_13 => _g(3, 13);
  static TextStyle get w3_14 => _g(3, 14);
  static TextStyle get w3_15 => _g(3, 15);
  static TextStyle get w3_16 => _g(3, 16);
  static TextStyle get w3_17 => _g(3, 17);
  static TextStyle get w3_18 => _g(3, 18);
  static TextStyle get w3_19 => _g(3, 19);
  static TextStyle get w3_20 => _g(3, 20);
  static TextStyle get w3_21 => _g(3, 21);
  static TextStyle get w3_22 => _g(3, 22);
  static TextStyle get w3_23 => _g(3, 23);
  static TextStyle get w3_24 => _g(3, 24);
  static TextStyle get w3_25 => _g(3, 25);
  static TextStyle get w3_26 => _g(3, 26);
  static TextStyle get w3_27 => _g(3, 27);
  static TextStyle get w3_28 => _g(3, 28);
  static TextStyle get w3_29 => _g(3, 29);
  static TextStyle get w3_30 => _g(3, 30);
  static TextStyle get w3_31 => _g(3, 31);
  static TextStyle get w3_32 => _g(3, 32);
  static TextStyle get w3_33 => _g(3, 33);
  static TextStyle get w3_34 => _g(3, 34);
  static TextStyle get w3_35 => _g(3, 35);
  static TextStyle get w3_36 => _g(3, 36);
  static TextStyle get w3_37 => _g(3, 37);
  static TextStyle get w3_38 => _g(3, 38);

  // =======================
  // w4 (400)
  // =======================
  static TextStyle get w4_8 => _g(4, 8);
  static TextStyle get w4_9 => _g(4, 9);
  static TextStyle get w4_10 => _g(4, 10);
  static TextStyle get w4_11 => _g(4, 11);
  static TextStyle get w4_12 => _g(4, 12);
  static TextStyle get w4_13 => _g(4, 13);
  static TextStyle get w4_14 => _g(4, 14);
  static TextStyle get w4_15 => _g(4, 15);
  static TextStyle get w4_16 => _g(4, 16);
  static TextStyle get w4_17 => _g(4, 17);
  static TextStyle get w4_18 => _g(4, 18);
  static TextStyle get w4_19 => _g(4, 19);
  static TextStyle get w4_20 => _g(4, 20);
  static TextStyle get w4_21 => _g(4, 21);
  static TextStyle get w4_22 => _g(4, 22);
  static TextStyle get w4_23 => _g(4, 23);
  static TextStyle get w4_24 => _g(4, 24);
  static TextStyle get w4_25 => _g(4, 25);
  static TextStyle get w4_26 => _g(4, 26);
  static TextStyle get w4_27 => _g(4, 27);
  static TextStyle get w4_28 => _g(4, 28);
  static TextStyle get w4_29 => _g(4, 29);
  static TextStyle get w4_30 => _g(4, 30);
  static TextStyle get w4_31 => _g(4, 31);
  static TextStyle get w4_32 => _g(4, 32);
  static TextStyle get w4_33 => _g(4, 33);
  static TextStyle get w4_34 => _g(4, 34);
  static TextStyle get w4_35 => _g(4, 35);
  static TextStyle get w4_36 => _g(4, 36);
  static TextStyle get w4_37 => _g(4, 37);
  static TextStyle get w4_38 => _g(4, 38);

  // =======================
  // w5 (500)
  // =======================
  static TextStyle get w5_8 => _g(5, 8);
  static TextStyle get w5_9 => _g(5, 9);
  static TextStyle get w5_10 => _g(5, 10);
  static TextStyle get w5_11 => _g(5, 11);
  static TextStyle get w5_12 => _g(5, 12);
  static TextStyle get w5_13 => _g(5, 13);
  static TextStyle get w5_14 => _g(5, 14);
  static TextStyle get w5_15 => _g(5, 15);
  static TextStyle get w5_16 => _g(5, 16);
  static TextStyle get w5_17 => _g(5, 17);
  static TextStyle get w5_18 => _g(5, 18);
  static TextStyle get w5_19 => _g(5, 19);
  static TextStyle get w5_20 => _g(5, 20);
  static TextStyle get w5_21 => _g(5, 21);
  static TextStyle get w5_22 => _g(5, 22);
  static TextStyle get w5_23 => _g(5, 23);
  static TextStyle get w5_24 => _g(5, 24);
  static TextStyle get w5_25 => _g(5, 25);
  static TextStyle get w5_26 => _g(5, 26);
  static TextStyle get w5_27 => _g(5, 27);
  static TextStyle get w5_28 => _g(5, 28);
  static TextStyle get w5_29 => _g(5, 29);
  static TextStyle get w5_30 => _g(5, 30);
  static TextStyle get w5_31 => _g(5, 31);
  static TextStyle get w5_32 => _g(5, 32);
  static TextStyle get w5_33 => _g(5, 33);
  static TextStyle get w5_34 => _g(5, 34);
  static TextStyle get w5_35 => _g(5, 35);
  static TextStyle get w5_36 => _g(5, 36);
  static TextStyle get w5_37 => _g(5, 37);
  static TextStyle get w5_38 => _g(5, 38);

  // =======================
  // w6 (600)
  // =======================
  static TextStyle get w6_8 => _g(6, 8);
  static TextStyle get w6_9 => _g(6, 9);
  static TextStyle get w6_10 => _g(6, 10);
  static TextStyle get w6_11 => _g(6, 11);
  static TextStyle get w6_12 => _g(6, 12);
  static TextStyle get w6_13 => _g(6, 13);
  static TextStyle get w6_14 => _g(6, 14);
  static TextStyle get w6_15 => _g(6, 15);
  static TextStyle get w6_16 => _g(6, 16);
  static TextStyle get w6_17 => _g(6, 17);
  static TextStyle get w6_18 => _g(6, 18);
  static TextStyle get w6_19 => _g(6, 19);
  static TextStyle get w6_20 => _g(6, 20);
  static TextStyle get w6_21 => _g(6, 21);
  static TextStyle get w6_22 => _g(6, 22);
  static TextStyle get w6_23 => _g(6, 23);
  static TextStyle get w6_24 => _g(6, 24);
  static TextStyle get w6_25 => _g(6, 25);
  static TextStyle get w6_26 => _g(6, 26);
  static TextStyle get w6_27 => _g(6, 27);
  static TextStyle get w6_28 => _g(6, 28);
  static TextStyle get w6_29 => _g(6, 29);
  static TextStyle get w6_30 => _g(6, 30);
  static TextStyle get w6_31 => _g(6, 31);
  static TextStyle get w6_32 => _g(6, 32);
  static TextStyle get w6_33 => _g(6, 33);
  static TextStyle get w6_34 => _g(6, 34);
  static TextStyle get w6_35 => _g(6, 35);
  static TextStyle get w6_36 => _g(6, 36);
  static TextStyle get w6_37 => _g(6, 37);
  static TextStyle get w6_38 => _g(6, 38);

  // =======================
  // w7 (700)
  // =======================
  static TextStyle get w7_8 => _g(7, 8);
  static TextStyle get w7_9 => _g(7, 9);
  static TextStyle get w7_10 => _g(7, 10);
  static TextStyle get w7_11 => _g(7, 11);
  static TextStyle get w7_12 => _g(7, 12);
  static TextStyle get w7_13 => _g(7, 13);
  static TextStyle get w7_14 => _g(7, 14);
  static TextStyle get w7_15 => _g(7, 15);
  static TextStyle get w7_16 => _g(7, 16);
  static TextStyle get w7_17 => _g(7, 17);
  static TextStyle get w7_18 => _g(7, 18);
  static TextStyle get w7_19 => _g(7, 19);
  static TextStyle get w7_20 => _g(7, 20);
  static TextStyle get w7_21 => _g(7, 21);
  static TextStyle get w7_22 => _g(7, 22);
  static TextStyle get w7_23 => _g(7, 23);
  static TextStyle get w7_24 => _g(7, 24);
  static TextStyle get w7_25 => _g(7, 25);
  static TextStyle get w7_26 => _g(7, 26);
  static TextStyle get w7_27 => _g(7, 27);
  static TextStyle get w7_28 => _g(7, 28);
  static TextStyle get w7_29 => _g(7, 29);
  static TextStyle get w7_30 => _g(7, 30);
  static TextStyle get w7_31 => _g(7, 31);
  static TextStyle get w7_32 => _g(7, 32);
  static TextStyle get w7_33 => _g(7, 33);
  static TextStyle get w7_34 => _g(7, 34);
  static TextStyle get w7_35 => _g(7, 35);
  static TextStyle get w7_36 => _g(7, 36);
  static TextStyle get w7_37 => _g(7, 37);
  static TextStyle get w7_38 => _g(7, 38);

  // =======================
  // w8 (800)
  // =======================
  static TextStyle get w8_8 => _g(8, 8);
  static TextStyle get w8_9 => _g(8, 9);
  static TextStyle get w8_10 => _g(8, 10);
  static TextStyle get w8_11 => _g(8, 11);
  static TextStyle get w8_12 => _g(8, 12);
  static TextStyle get w8_13 => _g(8, 13);
  static TextStyle get w8_14 => _g(8, 14);
  static TextStyle get w8_15 => _g(8, 15);
  static TextStyle get w8_16 => _g(8, 16);
  static TextStyle get w8_17 => _g(8, 17);
  static TextStyle get w8_18 => _g(8, 18);
  static TextStyle get w8_19 => _g(8, 19);
  static TextStyle get w8_20 => _g(8, 20);
  static TextStyle get w8_21 => _g(8, 21);
  static TextStyle get w8_22 => _g(8, 22);
  static TextStyle get w8_23 => _g(8, 23);
  static TextStyle get w8_24 => _g(8, 24);
  static TextStyle get w8_25 => _g(8, 25);
  static TextStyle get w8_26 => _g(8, 26);
  static TextStyle get w8_27 => _g(8, 27);
  static TextStyle get w8_28 => _g(8, 28);
  static TextStyle get w8_29 => _g(8, 29);
  static TextStyle get w8_30 => _g(8, 30);
  static TextStyle get w8_31 => _g(8, 31);
  static TextStyle get w8_32 => _g(8, 32);
  static TextStyle get w8_33 => _g(8, 33);
  static TextStyle get w8_34 => _g(8, 34);
  static TextStyle get w8_35 => _g(8, 35);
  static TextStyle get w8_36 => _g(8, 36);
  static TextStyle get w8_37 => _g(8, 37);
  static TextStyle get w8_38 => _g(8, 38);

  // =======================
  // w9 (900)
  // =======================
  static TextStyle get w9_8 => _g(9, 8);
  static TextStyle get w9_9 => _g(9, 9);
  static TextStyle get w9_10 => _g(9, 10);
  static TextStyle get w9_11 => _g(9, 11);
  static TextStyle get w9_12 => _g(9, 12);
  static TextStyle get w9_13 => _g(9, 13);
  static TextStyle get w9_14 => _g(9, 14);
  static TextStyle get w9_15 => _g(9, 15);
  static TextStyle get w9_16 => _g(9, 16);
  static TextStyle get w9_17 => _g(9, 17);
  static TextStyle get w9_18 => _g(9, 18);
  static TextStyle get w9_19 => _g(9, 19);
  static TextStyle get w9_20 => _g(9, 20);
  static TextStyle get w9_21 => _g(9, 21);
  static TextStyle get w9_22 => _g(9, 22);
  static TextStyle get w9_23 => _g(9, 23);
  static TextStyle get w9_24 => _g(9, 24);
  static TextStyle get w9_25 => _g(9, 25);
  static TextStyle get w9_26 => _g(9, 26);
  static TextStyle get w9_27 => _g(9, 27);
  static TextStyle get w9_28 => _g(9, 28);
  static TextStyle get w9_29 => _g(9, 29);
  static TextStyle get w9_30 => _g(9, 30);
  static TextStyle get w9_31 => _g(9, 31);
  static TextStyle get w9_32 => _g(9, 32);
  static TextStyle get w9_33 => _g(9, 33);
  static TextStyle get w9_34 => _g(9, 34);
  static TextStyle get w9_35 => _g(9, 35);
  static TextStyle get w9_36 => _g(9, 36);
  static TextStyle get w9_37 => _g(9, 37);
  static TextStyle get w9_38 => _g(9, 38);
}
