import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:delivery_app/src/features/presentation/filter_page/View/customsWidgets/cuisines_filters.dart';
import 'package:delivery_app/src/features/presentation/filter_page/View/customsWidgets/list_tile_checked.dart';
import 'package:delivery_app/src/features/presentation/filter_page/View/customsWidgets/price_filters.dart';
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
        elevation: 1.5,
        backgroundColor: Colors.white,
        title: headerText(text: "Filters", color: Colors.black, fontWeight: FontWeight.w600, fontSize: 20),
        leading: Container(
          padding: EdgeInsets.only(top: 20, left: 7.0),
          child: headerText(text: 'Reset', color: Colors.black, fontWeight: FontWeight.w600, fontSize: 17.0),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(top: 20, right: 10.0),
              child: headerText(text: 'Done', color: orange, fontWeight: FontWeight.w500, fontSize: 17.0),
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
              child: headerText(text: 'CUISINES', color: gris, fontWeight: FontWeight.w600, fontSize: 15.0),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: CuisinesFilters(),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
              child: headerText(text: 'SORT BY', color: gris, fontWeight: FontWeight.w600, fontSize: 17.0),
            ),
            _SortByContainer(),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
              child: headerText(text: 'FILTER', color: gris, fontWeight: FontWeight.w600, fontSize: 17.0),
            ),
            _filterContainer(),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 15.0),
              child: headerText(text: 'PRICE', color: gris, fontWeight: FontWeight.w600, fontSize: 17.0),
            ),
            PriceFilter(),
          ]))
        ],
      ),
    );
  }

  Widget _SortByContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          ListTileChecked(
            isActive: topRated,
            texto: 'Top Rated',
            func: () {
              setState(() {
                topRated = !topRated;
              });
            },
          ),
          ListTileChecked(
            isActive: nearMe,
            texto: 'Nearest Me',
            func: () {
              setState(() {
                nearMe = !nearMe;
              });
            },
          ),
          ListTileChecked(
            isActive: costHighToLow,
            texto: 'Cost High to Low',
            func: () {
              setState(() {
                costHighToLow = !costHighToLow;
              });
            },
          ),
          ListTileChecked(
            isActive: costLowToHigh,
            texto: 'Cost Low to High',
            func: () {
              setState(() {
                costLowToHigh = !costLowToHigh;
              });
            },
          ),
          ListTileChecked(
            isActive: mostPopular,
            texto: 'Most Popular',
            func: () {
              setState(() {
                mostPopular = !mostPopular;
              });
            },
          ),
        ],
      ),
    );
  }

   Widget _filterContainer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          ListTileChecked(
            isActive: openNow,
            texto: 'Open Now',
            func: () {
              setState(() {
                openNow = !openNow  ;
              });
            },
          ),
          ListTileChecked(
            isActive: creditCard,
            texto: 'Credit Cards',
            func: () {
              setState(() {
                creditCard = !creditCard;
              });
            },
          ),
          ListTileChecked(
            isActive: alcoholServed,
            texto: 'Alcohol Served',
            func: () {
              setState(() {
                alcoholServed = !alcoholServed;
              });
            },
          ),
        ],
      ),
    );
  }
}
