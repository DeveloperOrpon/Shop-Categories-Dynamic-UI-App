import 'package:flutter/material.dart';

import 'screens/add_product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        // debug banner remove
        debugShowCheckedModeBanner: false,
        //set Themes
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const AddProdectScreen());
  }
}
