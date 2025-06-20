import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:ducafe_ui_core/ducafe_ui_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';
import 'package:woo/common/index.dart';
import 'package:woo/global.dart';

void main() async {
  await Global.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896), // 设计稿中设备的尺寸(单位随意,建议dp,但在使用过程中必须保持一致)
      splitScreenMode: false, // 支持分屏尺寸
      minTextAdapt: false, // 是否根據寬(高)度的最小值是配文字

      builder: (context, child) => AdaptiveTheme(
      // 样式
        light: AppTheme.light, // 亮色主题
        dark: AppTheme.dark, // 暗色主题
        initial: ConfigService.to.themeMode, // 初始主题
        debugShowFloatingThemeButton: true, // 显示主题按钮
      
        // 建構
        builder: (theme, darkTheme) => RefreshConfiguration(
          headerBuilder: () => const ClassicHeader(), // 自定义刷新头部
          footerBuilder: () => const ClassicFooter(), // 自定义刷新尾部
          hideFooterWhenNotFull: true, // 当列表不满一页时,是否隐藏刷新尾部
          headerTriggerDistance: 80, // 触发刷新的距离
          maxOverScrollExtent: 100, // 最大的拖动距离
          footerTriggerDistance: 150, // 触发加载的距离

          child: GetMaterialApp(
            // 标题
            title: 'Flutter Demo',
          
            // 主题
            theme: theme,
            darkTheme: darkTheme,
          
            // 路由
            initialRoute: RouteNames.systemSplash,
            getPages: RoutePages.list,
            navigatorObservers: [RoutePages.observer],
          
            // 多语言
            translations: Translation(), // 词典
            localizationsDelegates:Translation.localizationsDelegates, // 代理
            supportedLocales: Translation.supportedLocales, // 支持的语言种类
            locale: ConfigService.to.locale, // 当前语言种类
            fallbackLocale: Translation.fallbackLocale, // 默认语言种类
                
            // builder
            builder: (context, widget) {
                
              // EasyLoading 初始化
              widget = EasyLoading.init()(context, widget);
              
              // 不随系统字体缩放比例
              return MediaQuery(
                data: MediaQuery.of(context)
                    .copyWith(textScaler: const TextScaler.linear(1.0)),
                child: widget,
              );
            },
                
            // 隐藏 debug 标志
            debugShowCheckedModeBanner: false,
          ),
        ),
      ),
    );
  }
}
