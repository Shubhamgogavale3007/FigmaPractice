import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/pages/myorders/my_order_page.dart';
import 'app/routes/app_pages.dart';
import 'app/utilis/binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialBinding: CommonBinding(),
      home: MyOrdersPage(),
      getPages: AppPages.pages,
    );
  }
}
