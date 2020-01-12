import 'package:flutter/material.dart';
import 'package:swipeit/common/app_Card.dart';
import 'package:swipeit/models/acct.dart';
import 'package:swipeit/repo/firestore.dart';
import 'package:swipeit/views/categoryBudget.dart';

class ReportPage extends StatelessWidget {
  final Account acct;
  final myController = TextEditingController();
  ReportPage({Key key, @required this.acct}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final total = getTotal(acct);
    return Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AppCard(
                child: Text(
                  "Total Spent: \$86.4",
                  style: TextStyle(fontSize: 32.0),
                  textAlign: TextAlign.center,
                ),
              ),
              /*AppCard(
                child: Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: myController,
                        decoration: InputDecoration(labelText: "\$"),
                      ),
                      Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 20.0),
                          child: FlatButton(
                            color: Colors.green,
                            textColor: Colors.white,
                            onPressed: (){

                            },
                            child: Text("Confirm"),

                          )),

                    ],
                  ),

                ),
              ),*/
            ],
          ),
        ));
  }
}