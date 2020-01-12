import 'package:flutter/material.dart';
import 'package:swipeit/common/app_Card.dart';
import 'package:swipeit/ui/view/home.dart';

class CatBudgetPage extends StatelessWidget {
  const CatBudgetPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var wCat = 200.0;
    var wDol = 100.0;
    return Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              AppCard(
                child: Text(
                  "your budget",
                  style: TextStyle(fontSize: 28.0),
                  textAlign: TextAlign.center,
                ),
              ),
              AppCard(
                child: Container(
                  margin: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      Row(
                        children: <Widget>[
                          Column(
                              children: [
                                Container (
                                    width: wCat,
                                    child: TextFormField(
                                        decoration: InputDecoration(labelText: "category")
                                    )
                                )
                              ]
                          ),
                          Column(
                              children: [
                                Container (
                                    width: wDol,
                                    child: TextFormField(
                                        decoration: InputDecoration(labelText: "\$"))
                                )
                              ]
                            ),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Column(
                            children: [
                              Container (
                                  width: wCat,
                                  child: TextFormField(
                                      decoration: InputDecoration(labelText: "category")
                                  )
                              )
                            ]
                        ),
                        Column(
                            children: [
                              Container (
                                  width: wDol,
                                  child: TextFormField(
                                      decoration: InputDecoration(labelText: "\$"))
                              )
                            ]
                        ),
                      ],
                    ),
                      Row(
                        children: <Widget>[
                          Column(
                              children: [
                                Container (
                                    width: wCat,
                                    child: TextFormField(
                                        decoration: InputDecoration(labelText: "category")
                                    )
                                )
                              ]
                          ),
                          Column(
                              children: [
                                Container (
                                    width: wDol,
                                    child: TextFormField(
                                        decoration: InputDecoration(labelText: "\$"))
                                )
                              ]
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                              children: [
                                Container (
                                    width: wCat,
                                    child: TextFormField(
                                        decoration: InputDecoration(labelText: "category")
                                    )
                                )
                              ]
                          ),
                          Column(
                              children: [
                                Container (
                                    width: wDol,
                                    child: TextFormField(
                                        decoration: InputDecoration(labelText: "\$"))
                                )
                              ]
                          ),
                        ],
                      ),
                      Container(
                          width: double.infinity,
                          margin: EdgeInsets.only(top: 20.0),
                          child: FlatButton(
                            color: Colors.green,
                            textColor: Colors.white,
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomePage()),
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