import 'package:flutter/material.dart';
import 'package:swipeit/common/app_Card.dart';
import 'package:swipeit/repo/firestore.dart';
import 'package:swipeit/views/budget.dart';

class LoginPage extends StatelessWidget {
  final myController = TextEditingController();
  LoginPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            AppCard(
              child: Text(
                "logo",
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
                        decoration: InputDecoration(labelText: "Email"),
                        controller: myController,
                  ),
                  TextFormField(
                    decoration: InputDecoration(labelText: "Password"),
                      ),
                      Container(
                        width: double.infinity,
                          margin: EdgeInsets.only(top: 20.0),
                          child: FlatButton(
                          color: Colors.green,
                          textColor: Colors.white,
                          onPressed: (){
                            createAcctRecord(myController.text);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => BudgetPage(email: myController.text)),
                            );
                          },
                              child: Text("Login"),

                      )),
                  Container(

                    alignment: Alignment.centerRight,
                    child: FlatButton(
                      onPressed: (){},
                      child: Text("Forgot Password?")))

                    ],
                  ),

              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Don't have an account?"),
                FlatButton(onPressed: (){}, child: Text("Sign up"))
              ],
            )
          ],
        ),
      ));
    }
  }

