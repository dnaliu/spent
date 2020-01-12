import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:swipeit/models/cardItem.dart';
import 'package:swipeit/ui/resources/colors.dart';
import 'package:swipeit/ui/resources/strings.dart';
import 'package:provider/provider.dart';
import 'package:swipeit/views/data.dart';

class DragTargetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return DragTarget(onWillAccept: (data) {return true;},
        onAccept: (CardItem data) {
          if (Provider.of<Data>(context).itemsList.length >= 1) {
            Provider.of<Data>(context).removeLastItem();
            Provider.of<Data>(context).changeSuccessDrop(true);
            Provider.of<Data>(context).changeAcceptedData(data);
          }
        },
        builder: (context, List<CardItem> cd, rd) {
          return DottedBorder(
            color: Colors.black,
            strokeWidth: 1,
            child: Container(
                height: media.height / 5 - 120,
                width: media.width/10,
//                color: Colors.grey[400],
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
//                  color: Colors.grey[400],
                  child: Center(
                    child: Text(
                      CATEGORY_1,
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ),
                )),
          );

      /*return Padding(
//          padding: const EdgeInsets.all(25.0),
          padding: const EdgeInsets.all(0),
          child: DottedBorder(
            color: Colors.black,
            strokeWidth: 1,
            child: Container(
              height: media.height/2,
              width: media.width,
              color: Colors.grey[400],
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                color: Colors.grey[400],
                child: Center(
                  child: Text(
                    CATEGORY_1,
                    style: TextStyle(color: Colors.black , fontSize: 18.0),
                  ),
                ),
              )),
          ),
        );*/

//      }
    });
  }

/*List<Widget> buildTargetList(CardItem cardItem) {
    List<Widget> targetList = [];
    targetList.add(
      DottedBorder(
        strokeWidth: 1,
        color: Colors.black,
              child:  Container(
          height: 200.0,
          width: 200.0,
          child: Card(
            shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            color: cardItem.cardColor,
            child: Center(
                  child: Text(
                '${cardItem.content}',
                style: TextStyle(fontSize: 25.0, color: WHITE_COLOR),
            )),
          ),
        ),

      ),
    );
    return targetList;
  }*/
}
