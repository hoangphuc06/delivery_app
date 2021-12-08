import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/data/recent_data.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_double.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Card/popular_card.dart';
import 'package:delivery_app/src/features/presentation/search_page/View/custom_view/tag_view.dart';
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
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    margin: EdgeInsets.only(top: 0.0),
                    alignment: Alignment.centerLeft,
                    child: headerText(
                      text: 'Search',
                      color: Colors.black,
                      fontSize: 30.0
                    )
                  ),
                  _searchInput(context),

                  SizedBox(height: 20,),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: headerDoubleText(textHeader: "History", textAction: "Clear All")
                  ),
                  _historyText(context, "Pizza Hut"),
                  _historyText(context, "Coffee"),
                  _historyText(context, "Jollibee"),
                  _historyText(context, "Toco Toco"),
                  _historyText(context, "Lotteria"),

                  SizedBox(height: 20,),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: headerDoubleText(textHeader: "Popular Tags", textAction: "View All")
                  ),
                  SizedBox(height: 5,),
                  TagView(),

                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: headerDoubleText(textHeader: "Recommend for you", textAction: "")
                  ),
                  SizedBox(height: 5,),
                  _shopItem_t2(context, recents_data[0]),
                  _shopItem_t2(context, recents_data[1]),
                  _shopItem_t2(context, recents_data[2]),
                  _shopItem_t2(context, recents_data[3]),

                  SizedBox(height: 50,),
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}

Widget _historyText(BuildContext context, String text) {
  return Container(
    margin: EdgeInsets.only(top: 12, left: 20, right: 20, bottom: 12),
    padding: EdgeInsets.only(bottom: 6),
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: gris))
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
            color: Colors.grey[600]
          ),
        ),
        Icon(Icons.clear, color: Colors.grey[600])
      ],
    ),
  );
}

Widget _searchInput(BuildContext context) {
  return Container(
    height: 40.0,
    margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
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

Widget _shopItem_t2(BuildContext context, data) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(210, 211, 215, 1.0),
            //offset: Offset(0, 0),
            blurRadius: 5.0,
          )
        ]
    ),
    padding: EdgeInsets.all(8),
    margin: EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 4),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
            width: 80,
            height: 80,
            fit: BoxFit.cover,
            image: AssetImage(data["image"]),
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 5.0),
                  width: 250,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      headerText(
                          text: data["name"],
                          color: Colors.black,
                          fontSize: 17),
                      Icon(Icons.bookmark, size: 20, color: data["like"]=="like"? orange: Colors.grey[400],)
                    ],
                  )),
              Container(
                //alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(bottom: 7.0),
                child: Text(
                  data["address"],
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 13),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: amarillo,
                          size: 16,
                        ),
                        SizedBox(width: 2,),
                        Text(
                          data["star"],
                          style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "(" + data["rating"] + ")",
                          style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: rosa,
                          size: 15,
                        ),
                        SizedBox(width: 2,),
                        Text(
                          "500m",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Row(
                      children: [
                        Icon(
                          Icons.access_time,
                          color: fbButtonColor,
                          size: 15,
                        ),
                        SizedBox(width: 2,),
                        Text(
                          "30 min",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
