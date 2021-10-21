import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/header_text.dart';
import 'package:flutter/material.dart';

class ListTileChecked extends StatefulWidget {
  const ListTileChecked({ Key? key }) : super(key: key);

  @override
  _ListTileCheckedState createState() => _ListTileCheckedState();
}

class _ListTileCheckedState extends State<ListTileChecked> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        listTile(context: context,text: 'Top Rated')
      ]
    );
  }
}

Widget listTile({BuildContext? context, text:String}) {
  return Container(
    decoration: BoxDecoration(
      border: Border(
        bottom: BorderSide(
          color: Theme.of(context!).dividerColor,
        )
      )
    ),
    child: ListTile(
      title: headerText(text, orange, FontWeight.w300, 17),
       trailing: Icon(
         Icons.check,
         color: orange,),
    ),
      
  );
}