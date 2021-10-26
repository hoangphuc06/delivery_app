import 'dart:html';

import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_double.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Card/popular_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(
                Icons.close,
                color: Colors.black,
                size: 40.0,
              ),
              onPressed: () => {Navigator.pop(context)},
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 20.0),
                          alignment: Alignment.centerLeft,
                          child: headerText(
                              text: 'Search',
                              color: Colors.black,
                              fontSize: 30.0)),
                      _searchInput(context),
                      SizedBox(
                        height: 40,
                      ),
                      headerDoubleText(
                          textHeader: "Recent Search", textAction: "Clear All"),
                      _sliderRecentSearch(),
                      headerDoubleText(
                          textHeader: "Recommend for you", textAction: ""),
                      SizedBox(height: 20),
                      popularesCard(
                          image: "assets/img_hamburger.jpg",
                          hasActButton: false),
                      popularesCard(
                          image: "assets/img_hamburger.jpg",
                          hasActButton: true),
                      popularesCard(
                          image: "assets/img_hamburger.jpg",
                          hasActButton: false),
                    ],
                  ))
            ]),
          )
        ],
      ),
    );
  }
}

Widget _searchInput(BuildContext context) {
  return Container(
    height: 40.0,
    margin: EdgeInsets.only(top: 20.0),
    padding: EdgeInsets.only(left: 5.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          contentPadding: EdgeInsets.only(top: 5.0),
          prefixIcon: Icon(
            Icons.search,
            color: gris,
          ),
          hintText: "Search",
          border: OutlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Widget _sliderRecentSearch() {
  return Container(
      margin: EdgeInsets.only(top: 5),
      height: 190,
      child: Swiper(
        itemCount: 4,
        layout: SwiperLayout.DEFAULT,
        itemBuilder: (BuildContext content, int index) {
          return ListView.builder(
            itemBuilder: (BuildContext content, int index) {
              return _cart(content);
            },
            scrollDirection: Axis.horizontal,
          );
        },
      ));
}

Widget _cart(BuildContext content) {
  return Container(
      margin: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: AssetImage("assets/img_hamburger.jpg"),
              height: 120,
              width: 160,
              fit: BoxFit.cover,
            ),
          ),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Container(
                margin: EdgeInsets.only(top: 5),
                child: headerText(
                    text: "Andy & Cindy's Dinner",
                    fontSize: 17,
                    fontWeight: FontWeight.w500)),
            Container(
                margin: EdgeInsets.only(top: 5),
                child: headerText(
                    text: "87 Bosford Circle Apt",
                    color: gris,
                    fontSize: 13,
                    fontWeight: FontWeight.w400))
          ])
        ],
      ));
}
