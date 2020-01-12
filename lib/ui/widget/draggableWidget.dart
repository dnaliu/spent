import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swipeit/models/cardItem.dart';
import 'package:swipeit/ui/resources/colors.dart';
import 'package:swipeit/ui/resources/strings.dart';
import 'package:swipeit/views/data.dart';

class DraggableWidget extends StatelessWidget {
  DraggableWidget({
    Key key,
    @required this.i,
  }) : super(key: key);

  final int i;

  CardItem item;

  @override
  Widget build(BuildContext context) {
    final double height = 250;
    print(
        'List last index  is ${Provider.of<Data>(context).itemsList.length - 1}');
    return Draggable(
      data: Provider.of<Data>(context).itemsList[i],
      childWhenDragging: Container(
        height: height,
        width: 150.0,
        child: Card(
          elevation: 2.0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          color: i >= 1
              ? Provider.of<Data>(context)
                  .itemsList
                  .elementAt(
                      (Provider.of<Data>(context).itemsList.length - 1) - 1)
                  .cardColor
              : WHITE_COLOR,
          child: Center(
            child: Text(
              i >= 1
                  ? '${Provider.of<Data>(context).itemsList.elementAt((Provider.of<Data>(context).itemsList.length - 1) - 1).content}'
                  : "",
              style: TextStyle(fontSize: 25.0, color: WHITE_COLOR),
            ),
          ),
        ),
      ),
      feedback: Container(
        height: height,
        width: 150.0,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          elevation: 2.0,
          color: Provider.of<Data>(context).itemsList[i].cardColor,
          child: Center(
              child: Text(
            '${Provider.of<Data>(context).itemsList[i].content}',
            style: TextStyle(fontSize: 25.0, color: WHITE_COLOR),
          )),
        ),
      ),
      child: Container(
        height: height,
        width: 150.0,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
          elevation: 2.0,
          color: Provider.of<Data>(context).itemsList[i].cardColor,
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                  '${Provider.of<Data>(context).itemsList[i].content}',
                    style: TextStyle(fontSize: 25.0, color: WHITE_COLOR),
                  ),
                  Text(
                    '\$${Provider.of<Data>(context).itemsList[i].price.toString()}',
                    style: TextStyle(fontSize: 50.0, color: WHITE_COLOR),
                  ),
                  Text(
                    '${Provider.of<Data>(context).itemsList[i].date}',
                    style: TextStyle(fontSize: 25.0, color: WHITE_COLOR),
                  ),
                ]
              ),
          )
        ),
      ),
    );
  }
}
