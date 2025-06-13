import 'package:flutter/material.dart';

import 'colors.dart';

/// 主题
class AppTheme {
  /////////////////////////////////////////////////
  /// 自定义颜色
  /// 下面那些只是範例
  /////////////////////////////////////////////////

  static const primary = Color(0xff8f4c38);
  static const secondary = Color(0xff77574e);
  static const success =  Color(0xff6c5d2f);
  static const warning = Color(0xffba1a1a);
  static const error = Color(0xffba1a1a);
  static const info = Color(0xff6c5d2f);

  /////////////////////////////////////////////////
  /// 主题
  /////////////////////////////////////////////////

  /// 亮色主题
  static ThemeData get light {
    ColorScheme scheme = MaterialTheme.lightScheme();
    return _getTheme(scheme);
  }

  /// 暗色主题
  static ThemeData get dark {
    ColorScheme scheme = MaterialTheme.darkScheme();
    return _getTheme(scheme);
  }

  /// 获取主题
  static ThemeData _getTheme(ColorScheme scheme) {
    return ThemeData(
      useMaterial3: true ,
      colorScheme: scheme,
      fontFamily: "NotoSansTC"
    );
  }
}
