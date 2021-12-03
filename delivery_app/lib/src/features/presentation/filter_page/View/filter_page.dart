import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:delivery_app/src/features/presentation/filter_page/View/customsWidgets/cuisines_filters.dart';
import 'package:delivery_app/src/features/presentation/filter_page/View/customsWidgets/foodGroups_filter.dart';
import 'package:delivery_app/src/features/presentation/filter_page/View/customsWidgets/list_tile_checked.dart';
import 'package:delivery_app/src/features/presentation/filter_page/View/customsWidgets/price_filters.dart';
import 'package:delivery_app/src/features/presentation/filter_page/View/customsWidgets/rating_filter.dart';
import 'package:flutter/material.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  //Sort by boolean
  bool topRated = false;
  bool nearMe = false;
  bool costHighToLow = false;
  bool costLowToHigh = false;
  bool mostPopular = false;
  //Filter  by boolean
  bool openNow = false;
  bool creditCard = false;
  bool alcoholServed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: headerText(
            text: "Filters",
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 20),
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.only(top: 20, right: 10.0),
              child: headerText(
                  text: 'Reset',
                  color: primary1,
                  fontWeight: FontWeight.w500,
                  fontSize: 17.0),
            ),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 15.0, left: 15.0),
              child: headerText(
                  text: 'Category',
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: CuisinesFilters(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
              child: headerText(
                  text: 'Food Groups',
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: FoodGroupFilter(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
              child: headerText(
                  text: 'Rating',
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: RatingFilter(),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
              child: headerText(
                  text: 'Price range',
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 17.0),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: PriceFilter()),
            SizedBox(
              height: 20,
            ), Container(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: _buttonApplyFilter(context)),
           
            SizedBox(
              height: 20,
            ),
          ]))
        ],
      ),
    );
  }

  Widget _buttonApplyFilter(context) {
    return Container(
        width: double.infinity,
        height: 50,
        child: RaisedButton(
          elevation: 0.5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: primary,
          onPressed: () {},
          child: Container(
            child: headerText(
                text: "Apply Filters",
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: white),
          ),
        ));
  }
}
