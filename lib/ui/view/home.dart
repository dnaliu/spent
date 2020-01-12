import 'package:flutter/material.dart';
import 'package:swipeit/models/acct.dart';
import 'package:swipeit/ui/resources/strings.dart';
import 'package:swipeit/ui/widget/cardStackWidget.dart';
import 'package:swipeit/ui/widget/dragTargetWidgetDown.dart';
import 'package:swipeit/ui/widget/dragTargetWidgetLeft.dart';
import 'package:swipeit/ui/widget/dragTargetWidgetRight.dart';
import 'package:swipeit/ui/widget/dragTargetWidgetUp.dart';
import 'package:swipeit/views/report.dart';

class HomePage extends StatelessWidget {
  final Account acct;
  const HomePage({Key key, @required this.acct}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(APP_BAR_TITLE),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
//          Provider.of<Data>(context).initializeDraggableList();
//          Provider.of<Data>(context).changeSuccessDrop(false);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ReportPage(acct: acct)),
          );
        },
        elevation: 20.0,
//        label: Text('Reset'),
        label: Text('Next'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          alignment: Alignment.center,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [DragTargetWidgetUp()]
                  /*Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: DragTargetWidget(),
                  )*/
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                        children: [DragTargetWidgetLeft()]
                    ),
                    Column(
                        children: [CardStackWidget()]
                    ),
                    Column(
                        children: [DragTargetWidgetRight()]
                    ),
                  ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [DragTargetWidgetDown()]
              ),
            ],
          ),
        ),
      ),
    );
  }
}
