import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipeit/ui/resources/constants.dart';
import 'package:swipeit/ui/view/home.dart';
import 'package:swipeit/views/data.dart';

void main() => runApp(MyApp1());

class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'GridView Demo',


      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.green
      ),

      routes: <String, WidgetBuilder>{
        Constants.HOME_SCREEN: (BuildContext context) => ChangeNotifierProvider(
            builder: (context) => Data(),
            child: HomePage())

      },
      initialRoute: Constants.HOME_SCREEN,
    );

  }
}
