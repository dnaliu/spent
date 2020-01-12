import 'package:flutter/material.dart';
import 'package:swipeit/common/app_Card.dart';
import 'package:swipeit/models/acct.dart';
import 'package:swipeit/repo/firestore.dart';
import 'package:swipeit/ui/resources/strings.dart';

class ReportPage extends StatelessWidget {
  final Account acct;
  final myController = TextEditingController();
  String dropdownValue = CATEGORY_1;
  ReportPage({Key key, @required this.acct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double price = 86.4;
    final buttonWidth = 300.0;
    final total = getTotal(acct);
    final msg = price > acct.budget ? "You went over budget :( Try setting a more realistic budget next time!" : "You succeeded in keeping within the budget! Good job!";
    return Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AppCard(
                child: Text(
                  "Total Spent: \$" + price.toString(),
                  style: TextStyle(fontSize: 32.0),
                  textAlign: TextAlign.center,
                ),
              ),
              AppCard(
                child: Text(
                  msg,
                  style: TextStyle(fontSize: 18.0),
                  textAlign: TextAlign.center,
                ),
              ),
              AppCard(
                child: Container(
                  child: Column(
                    children: [
                      Row (
                        children: [
                          Container(
                              width: buttonWidth,
                              margin: EdgeInsets.only(top: 20.0),
                              child: FlatButton(
                                color: Colors.green,
                                textColor: Colors.white,
                                onPressed: (){

                                },
                                child: Text(CATEGORY_1),

                              ))
                        ]
                      ),
                      Row (
                          children: [
                            Container(
                                width: buttonWidth,
                                margin: EdgeInsets.only(top: 20.0),
                                child: FlatButton(
                                  color: Colors.green,
                                  textColor: Colors.white,
                                  onPressed: (){

                                  },
                                  child: Text(CATEGORY_2),

                                ))
                          ]
                      ),
                      Row (
                          children: [
                            Container(
                                width: buttonWidth,
                                margin: EdgeInsets.only(top: 20.0),
                                child: FlatButton(
                                  color: Colors.green,
                                  textColor: Colors.white,
                                  onPressed: (){

                                  },
                                  child: Text(CATEGORY_3),

                                ))
                          ]
                      ),
                      Row (
                          children: [
                            Container(
                                width: buttonWidth,
                                margin: EdgeInsets.only(top: 20.0),
                                child: FlatButton(
                                  color: Colors.green,
                                  textColor: Colors.white,
                                  onPressed: (){

                                  },
                                  child: Text(CATEGORY_4),

                                ))
                          ]
                      ),

                          /*Padding (
                            child: DropdownButton<String>(
                              value: dropdownValue,
                              icon: Icon(Icons.arrow_downward),
                              iconSize: 24,
                              elevation: 16,
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 22.0
                              ),
                              underline: Container(
                                height: 2,
                                color: Colors.lightGreenAccent,
                              ),
                              onChanged: (String newValue) {
                                  dropdownValue = newValue;
                              },
                              items: <String>[CATEGORY_1, CATEGORY_2, CATEGORY_3, CATEGORY_4]
                                  .map<DropdownMenuItem<String>>((String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              })
                                  .toList(),
                            ), padding: const EdgeInsets.only(left: 60.0, top: 0.0, right: 25.0, bottom: 0.0),
                          )*/


                      Row (
                          children: [

                          ]
                      ),
                      /*Row (
                          children: [
                            Container(
                                width: 300,
                                margin: EdgeInsets.only(top: 20.0),
                                child: FlatButton(
                                  color: Colors.green,
                                  textColor: Colors.white,
                                  onPressed: (){

                                  },
                                  child: Text("Confirm"),

                                )
                            ),
                          ]
                      ),*/

                    ],
                  ),

                ),
              ),
            ],
          ),
        ));
  }
}