import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:swipeit/models/cardItem.dart';
import 'package:swipeit/repo/firestore.dart';
import 'package:swipeit/ui/resources/colors.dart';
import 'package:swipeit/ui/resources/strings.dart';
import 'package:provider/provider.dart';
import 'package:swipeit/views/data.dart';

class DragTargetWidgetDown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;

    return DragTarget(onWillAccept: (data) {return true;},
        onAccept: (CardItem data) {
          print('Category: $CATEGORY_4');
          createRecord(data, CATEGORY_4);
          if (Provider.of<Data>(context).itemsList.length >= 1) {
            Provider.of<Data>(context).removeLastItem();
            Provider.of<Data>(context).changeSuccessDrop(true);
            Provider.of<Data>(context).changeAcceptedData(data);
          }
        },
        builder: (context, List<CardItem> cd, rd) {
//          return DottedBorder(
//            color: Colors.black,
//            strokeWidth: 1,
            return Container(
                height: media.height / 4,
                width: media.width-15,
                color: Color(0xFFFAFAFA),
//                child: Card(
//                  shape: RoundedRectangleBorder(
//                      borderRadius: BorderRadius.circular(5)),
//                  color: Color(0xFFFAFAFA),
                  child: Center(
                    child: Text(
                      CATEGORY_4,
                      textAlign: TextAlign.end,
                      style: TextStyle(color: Colors.black, fontSize: 18.0),
                    ),
                  ),
//                )
//                )),
          );
    });
  }
}
