import 'package:swipeit/models/cardItem.dart';
import 'package:swipeit/ui/resources/strings.dart';

import 'colors.dart';

class Constants{

 static String HOME_SCREEN ='HOME_SCREEN';

 static List<CardItem> initializeList(List<CardItem> itemList){

     itemList = [
      CardItem(content: "McDonalds", price: 10.00, date: "01/02/2020", cardColor: GREEN_COLOR),
      CardItem(content: "H&M", price: 20.00, date: "01/05/2020", cardColor: GREEN_COLOR),
      CardItem(content: "The Source", price: 30.50, date: "01/06/2020", cardColor: GREEN_COLOR),
      CardItem(content: "Loblaws", price: 11.00, date: "01/06/2020", cardColor: GREEN_COLOR),
      CardItem(content: "Cineplex", price: 14.90, date: "01/11/2020", cardColor: GREEN_COLOR),
    ];

    return itemList;
    
  }

}