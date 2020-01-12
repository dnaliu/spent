import 'package:flutter/material.dart';
import 'package:swipeit/common/app_Card.dart';
import 'package:swipeit/models/acct.dart';
import 'package:swipeit/repo/firestore.dart';
import 'package:swipeit/views/categoryBudget.dart';

class BudgetPage extends StatelessWidget {
  final String email;
  final myController = TextEditingController();
  BudgetPage({Key key, @required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              AppCard(
                child: Text(
                  "your budget",
                  style: TextStyle(fontSize: 32.0),
                  textAlign: TextAlign.center,
                ),
              ),
              AppCard(
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
                              updateAcctRecord(Account(email: email, budget: double.parse(myController.text), spent: 0));
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => CatBudgetPage()),
                              );
                            },
                            child: Text("Confirm"),

                          )),

                    ],
                  ),

                ),
              ),
            ],
          ),
        ));
  }
}