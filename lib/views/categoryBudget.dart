import 'package:flutter/material.dart';
import 'package:swipeit/common/app_Card.dart';
import 'package:swipeit/main1.dart';
import 'package:swipeit/ui/view/home.dart';

class CatBudgetPage extends StatelessWidget {
  const CatBudgetPage({Key key}) : super(key: key);

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
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: [
                          Container (
                            width: 50.0,
                            child: TextFormField(
                              decoration: InputDecoration(labelText: "category")
                            )
                          )
                        ]
                      ),
                      Column(
                        children: [
                          Container (
                              width: 50.0,
                              child: TextFormField(
                                decoration: InputDecoration(labelText: "\$"))
                          )
                        ]
                      ),
                      Container(
                          width: 200,
                          margin: EdgeInsets.only(top: 20.0),
                          child: FlatButton(
                            color: Colors.green,
                            textColor: Colors.white,
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => MyApp1()),
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