import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/header_text.dart';
import 'package:delivery_app/src/features/presentation/filter_page/View/customsWidgets/cuisines_filters.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({ Key? key }) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        centerTitle: true,
        elevation: 1.5,
        backgroundColor: Colors.white,
        title: headerText('Filters', Colors.black, FontWeight.w600, 20),
        leading: Container(
          padding: EdgeInsets.only(top: 20,left: 7.0),
          child: headerText('Reset', Colors.black, FontWeight.w600, 17.0),
        ),
        actions: [
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child:
              Container(
                padding: EdgeInsets.only(top: 20,right: 10.0),
                child: headerText('Done', orange, FontWeight.w500, 17.0),
              ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(top: 15.0,bottom: 15.0,left: 15.0),
                  child:
                    headerText('CUISINES', gris, FontWeight.w600, 15.0),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: CuisinesFilters() ,)
              ]
            ) 
          )
        ],
      ),
    );
  }
}

