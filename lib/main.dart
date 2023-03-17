import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'IOS_setting_ui/Ios_Setting.dart';
import 'Setting_ui/Settiing_View.dart';
import 'Setting_ui/Setting_Provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => androidview(),),
      ],
      child: Platform.isAndroid?android():ios(),

    ),
  );
}



Widget android()
{
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => Screen(),
    },
  );
}
Widget ios()
{
  return CupertinoApp(
    theme: CupertinoThemeData(brightness: Brightness.light),
    debugShowCheckedModeBanner: false,
    routes: {
      '/':(context) => ISetting(),
    },
  );
}