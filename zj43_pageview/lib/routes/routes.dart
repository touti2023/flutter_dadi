import 'package:flutter/material.dart';
import 'package:zj_bottomnavigationbar/pages/pageViewSwiper.dart';
//抽离之后要引包
import '../pages/tabs.dart';
import '../pages/search.dart'; //倒入搜索组件d
import '../pages/form.dart'; //倒入表单组件
import '../pages/news.dart'; //倒入传值组件
import '../pages/shop.dart'; //倒入传值组件
import '../pages/user/login.dart'; //倒入传值组件
import '../pages/user/registerFirst.dart'; //倒入传值组件
import '../pages/user/registerSecond.dart'; //倒入传值组件
import '../pages/user/registerThird.dart'; //倒入传值组件
import '../pages/dialog.dart';
import '../pages/pageView.dart';
import '../pages/pageViewBuilder.dart';
import '../pages/pageViewFullPage.dart';
import '../pages/pageViewSwiper.dart';
import '../pages/pageViewSwiper_wuxianxunhuan.dart';

/*
插入 import 'package:flutter/cupertino.dart'; 可以使安卓配置ios的路由效果

此时要删除 import 'package:flutter/material.dart'; 包

并且将 MaterialPageRoute 替换为 CupertinoPageRoute

*/

//1.配置路由
Map routes = {
  "/": (context) => const tabs(),
  "/news": (context) => const NewsPage(),
  "/search": (context) => const SearchPage(),
  "/form": (context) => const FormPage(
        arguments: {},
      ),
  "/shop": (context) => const ShopPage(
        arguments: {},
      ),
  "/login": (context) => const LoginPage(),
  "/registerFirst": (context) => const RegisterFirstPage(),
  "/registerSecond": (context) => const RegisterSecondPage(),
  "/registerThird": (context) => const RegisterThirdPage(),
  "/dialog": (context) => const DialogPage(),
  "/pageView": (context) => const PageViewPage(),
  "/pageViewBuilder": (context) => const PageViewBuilderPage(),
  "/pageViewFullPage": (context) => const PageViewFullPage(),
  "/pageViewSwiper": (context) => const PageViewSwiper(),
  "/pageViewSwiper_wuxianxunhuan": (context) =>
      const PageViewSwiper_wuxianxunhuan(),
};

//2.固定写法，配置 onGenerateRoute 直接cv
var onGenerateRoute = (RouteSettings settings) {
  //统一处理,以下复制粘贴原文件代码
  final String? name = settings.name;
  final Function? pageContentBuilder = routes[name];
  if (pageContentBuilder != null) {
    if (settings.arguments != null) {
      final Route route = MaterialPageRoute(
          builder: (context) =>
              pageContentBuilder(context, arguments: settings.arguments));
      return route;
    } else {
      final Route route =
          MaterialPageRoute(builder: (context) => pageContentBuilder(context));
      return route;
    }
  }
  return null;
};
