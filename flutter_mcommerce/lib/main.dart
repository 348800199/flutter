import 'package:flutter/material.dart';
import 'package:flutter_mcommerce/pages/index_page.dart';
import 'package:flutter_mcommerce/common/style/app_style.dart' as AppStyle;
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  myApp({Key key}) : super(key: key);

  @override
  _myAppState createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(375, 667),
        allowFontScaling: false,
        builder: () => MaterialApp(
              // 去掉图标上的debug
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                scaffoldBackgroundColor: Color.fromRGBO(247, 247, 247, 1),
                primaryColor: AppStyle.AppColors.primary, // 导航栏和tabBar的颜色
                accentColor: AppStyle.AppColors.primary,
                textTheme: TextTheme(
                  bodyText2: TextStyle(height: 1.4, fontFamily: 'Hind', fontSize: ScreenUtil().setSp(16)),
                ).apply(
                    bodyColor: AppStyle.AppColors.text1,
                    displayColor: AppStyle.AppColors.text1,
                    decorationColor: AppStyle.AppColors.text1),
              ),
              home: IndexPage(),
            ));
  }
}
