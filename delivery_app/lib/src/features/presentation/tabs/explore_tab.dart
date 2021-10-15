import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/header_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      children: [
                        //_topBar(context),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.centerLeft,
                          child: headerText("Discover new places", Colors.black, FontWeight.bold, 20),
                        ),
                        _sliderCards(),
                        _headers(context, "Popular this week", "Show all"),
                        _populares(context, "assets/img_hamburger.jpg"),
                        _populares(context, "assets/img_hamburger.jpg"),
                        _populares(context, "assets/img_hamburger.jpg"),
                        SizedBox(height: 20,),
                        _headers(context, "Collections", "Show all"),
                        _sliderCollections(),
                      ],
                    ),
                  )
                ]))
          ],
        ));
  }
}

Widget _topBar(BuildContext context) {
  return Row(
    children: [
      Container(
        width: 310,
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 16),
        decoration: BoxDecoration(
            border: Border.all(color: Color.fromRGBO(234, 236, 239, 1.0)),
            borderRadius: BorderRadius.circular(20.0)),
        child: Row(
          children: [
            Icon(
              Icons.search,
              size: 20,
              color: gris,
            ),
            Container(
              margin: EdgeInsets.only(left: 5),
              child: Text(
                "Search",
                style: TextStyle(color: gris, fontSize: 17),
              ),
            )
          ],
        ),
      ),
      Container(
        width: 40,
        height: 40,
        margin: EdgeInsets.only(left: 15),
        decoration: BoxDecoration(
            color: Color.fromRGBO(209, 209, 214, 1.0),
            borderRadius: BorderRadius.circular(30.0)),
        child: IconButton(
          icon: Icon(
            Icons.filter_list,
            size: 25,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      )
    ],
  );
}

Widget _sliderCards() {
  return Container(
    margin: EdgeInsets.only(left: 5),
    height: 350,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _tarjecta(context);
            }
        );
      },
    ),
  );
}

Widget _tarjecta(BuildContext context) {
  return Container(
    //margin: EdgeInsets.all(5),
    child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            width: 200,
            height: 250,
            fit: BoxFit.cover,
            image: AssetImage("assets/img_hamburger.jpg"),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                "Hamburger King Shop",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "District 1, HCM city",
                style: TextStyle(
                    color: gris,
                    fontWeight: FontWeight.w600,
                    fontSize: 13),
              ),
            ),
            Row(
              children: [
                Icon(Icons.star, color: amarillo, size: 16,),
                Text(
                  "4.8",
                  style: TextStyle(color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
                ),
                Text(
                  " (272 ratings)",
                  style: TextStyle(color: gris, fontSize: 13, fontWeight: FontWeight.w600),
                ),
                Container(
                  width: 80,
                  height: 18,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: RaisedButton(
                    elevation: 0.5,
                    shape: StadiumBorder(),
                    color: orange,
                    textColor: Colors.white,
                    onPressed: () {},
                    child: Text(
                      "Delivery",
                      style: TextStyle(fontSize: 11, ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],),
  );
}

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: headerText(textHeader, Colors.black, FontWeight.bold, 20),
      ),
      Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(
              textAction,
              style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
            ),
            Icon(Icons.play_arrow)
          ],
        ),
      ),
    ],
  );
}

Widget _populares(BuildContext context, String image) {
  return Column(
    children: [
      Container(
        margin: EdgeInsets.only(left: 10),
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image(
                width: 80,
                height: 80,
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 7),
                    child: headerText("Andy and Cindy's Dinner", Colors.black, FontWeight.bold, 17)
                  ),
                  Container(
                    //alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 5.0),
                    child: Text(
                      "87 Botsford Cicrle Apt",
                      style: TextStyle(color: gris, fontWeight: FontWeight.w500, fontSize: 13),
                    ),
                  ),
                  Row(children: [
                    Icon(Icons.star, color: amarillo, size: 16.0,),
                    Text(
                      "4.5",
                      style: TextStyle(color: gris, fontWeight: FontWeight.w500, fontSize: 13)
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      child: Text(
                          "(300 ratings)",
                          style: TextStyle(color: gris, fontWeight: FontWeight.w500, fontSize: 13)
                      ),
                    ),
                    Container(
                      width: 110,
                      height: 18,
                      margin: EdgeInsets.only(left: 35),
                      child: RaisedButton(
                        onPressed: () {},
                        elevation: 0.5,
                        shape: StadiumBorder(),
                        color:orange,
                        child: Text(
                          "Delivery",
                          style: TextStyle(fontSize: 11.0, color: Colors.white),
                        ),
                      ),
                    ),
                  ],)
                ],
              ),
            ),
          ],
        ),
      )
    ],
  );
}

Widget _sliderCollections() {
  return Container(
    height: 180,
    child: Swiper(
      itemCount: 4,
      layout: SwiperLayout.DEFAULT,
      itemBuilder: (BuildContext context, int index) {
        return ListView.builder(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return _tarjectaCollection(context);
            }
        );
      },
    ),
  );
}

Widget _tarjectaCollection(BuildContext context) {
  return Container(
    margin: EdgeInsets.all(10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: Image(
            fit: BoxFit.cover,
            width: 300,
            height: 150,
            image: AssetImage("assets/img_hamburger.jpg"),
          ),
        ),
      ],
    ),
  );
}