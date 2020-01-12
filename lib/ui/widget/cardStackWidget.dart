import 'package:flutter/material.dart';
import 'package:swipeit/ui/resources/colors.dart';
import 'package:swipeit/ui/resources/strings.dart';
import 'package:swipeit/ui/widget/draggableWidget.dart';
import 'package:provider/provider.dart';
import 'package:swipeit/views/data.dart';

class CardStackWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: cardItems(context),
    );
  }

  List<Widget> cardItems(BuildContext context) {
    var cardItemdraggable;
    List<Widget> carditemsList = [];
    if (Provider.of<Data>(context).itemsList.length < 1) {
      cardItemdraggable = Container(
        height: 250.0,
        width: 150.0,
        child: Card(
          color: Color(0xFFFAFAFA),
        ),
      );
    } else {
      for (int i = 0; i < Provider.of<Data>(context).itemsList.length; i++) {
        cardItemdraggable = Container(
          child: DraggableWidget(i: i),
        );
      }
    }
    carditemsList.add(cardItemdraggable);

    return carditemsList;
  }
}
