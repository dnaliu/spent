import 'package:flutter/material.dart';
import 'package:swipeit/ui/resources/strings.dart';
import 'package:swipeit/ui/widget/cardStackWidget.dart';
import 'package:swipeit/ui/widget/dragTargetWidgetDown.dart';
import 'package:swipeit/ui/widget/dragTargetWidgetLeft.dart';
import 'package:swipeit/ui/widget/dragTargetWidgetRight.dart';
import 'package:swipeit/ui/widget/dragTargetWidgetUp.dart';
import 'package:swipeit/views/data.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(APP_BAR_TITLE),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Provider.of<Data>(context).initializeDraggableList();
          Provider.of<Data>(context).changeSuccessDrop(false);
        },
        elevation: 20.0,
        label: Text('Reset'),
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
