import 'package:carousel_slider/carousel_slider.dart';
import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/data/popular_data.dart';
import 'package:delivery_app/src/features/data/shop_data.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

final List<String> imgList = [
  'assets/banner/banner1.png',
  'assets/banner/banner2.png',
  'assets/banner/banner3.png',
];

final List<Widget> imageSliders = imgList.map((item) => Container(
  child: Container(
    child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        child: Stack(
          children: <Widget>[
            Image.asset(item, fit: BoxFit.cover, width: 1000),
            Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(200, 0, 0, 0),
                        Color.fromARGB(0, 0, 0, 0)
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: Container()),
            ),
          ],
        )),
  ),
)).toList();

class ExploreTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
          slivers: [
          SliverList(
              delegate: SliverChildListDelegate([
              Container(
                child: Column(
                  children: [
                    _buildHeader(),
                    _topBar(context),
                    //_banner(context),
                    Container(
                      padding: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 16),
                      alignment: Alignment.centerLeft,
                      child: headerText(
                          text: "Discover new places",
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    _shopsSlider(context),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                      child: headerText(
                          text: "Popular this week",
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    _populares(context, populars_data[0]),
                    _populares(context, populars_data[1]),
                    _populares(context, populars_data[2]),
                    _populares(context, populars_data[3]),
                    Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
                      child: headerText(
                          text: "Recommend for you",
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    //_shopsSlider(context),
                    SizedBox(
                      height: 50,
                    ),
                    // GestureDetector(
                    //     onTap: () {
                    //       Navigator.pushNamed(context, 'collections');
                    //     },
                    //     child: _headers(context, "Collections", "Show all")),
                    // _sliderCollections(),
                  ],
                ),
              )
          ]))
        ],
    ));
  }
}

Widget _buildHeader() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16),
        Text("Hello", style: TextStyle(fontSize: 16)),
        Text(
          "David Beckham,",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

Widget _topBar(BuildContext context) {
  var size = MediaQuery.of(context).size;
  return Container(
    padding: EdgeInsets.only(left: 16, right: 16),
    child: Row(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.pushNamed(context, 'search');
          },
          child: Container(
            padding: EdgeInsets.only(left: 8),
            decoration: BoxDecoration(
              color: Color.fromRGBO(142, 142, 147, 1.2),
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            width: size.width - 85,
            height: 40,
            child: Row(
              children: [
                Icon(Icons.search, color: Colors.black, size: 18,),
                SizedBox(width: 5,),
                Text(
                  "Search",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ),
        ),
        Spacer(),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
              color: orange,
              borderRadius: BorderRadius.circular(30.0)),
          child: IconButton(
            icon: Icon(
              Icons.filter_list,
              size: 25,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'filter');
            },
          ),
        )
      ],
    ),
  );
}

Widget _banner(BuildContext context) {
  return Container(
    margin: EdgeInsets.only(left: 16, right: 16, top: 16),
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.8,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
          autoPlay: true,
        ),
        items: imageSliders,
      ));
}

Widget _shopsSlider(BuildContext context) {
  return Container(
    height: 235,
    padding: EdgeInsets.only(left: 16, right: 16),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: shops_data.length,
      itemBuilder: (context,index) {
        return _shopItem(context, shops_data[index]);
      }
    ),
  );
}

Widget _shopItem(BuildContext context, shops_data, ) {
  return GestureDetector(
    onTap: () {
      Navigator.pushNamed(context, "place-detail");
    },
    child: Container(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.only(right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
              width: 200,
              height: 150,
              fit: BoxFit.cover,
              image: AssetImage(shops_data["image"]),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            child: Text(
              shops_data["name"],
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            alignment: Alignment.centerLeft,
            child: Text(
              shops_data["address"],
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.w600, fontSize: 13),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: amarillo,
                  size: 16,
                ),
                SizedBox(width: 2,),
                Text(
                  shops_data["star"],
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  " (" + shops_data["rating"] + " ratings)",
                  style: TextStyle(
                      color: gris, fontSize: 13, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
}

Widget _headers(BuildContext context, String textHeader, String textAction) {
  return Row(
    children: [
      Container(
        alignment: Alignment.centerLeft,
        child: headerText(text: textHeader, color: Colors.black, fontSize: 20),
      ),
      Spacer(),
      GestureDetector(
        child: Row(
          children: [
            Text(
              textAction,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            Icon(Icons.play_arrow)
          ],
        ),
      ),
    ],
  );
}

Widget _populares(BuildContext context, populars_data) {
  return Container(
    padding: EdgeInsets.only(top: 8, bottom: 8, left: 16, right: 16),
    child: Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image(
            width: 80,
            height: 80,
            fit: BoxFit.cover,
            image: AssetImage(populars_data["image"]),
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
                  child: headerText(
                      text: populars_data["name"],
                      color: Colors.black,
                      fontSize: 17)),
              Container(
                //alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(bottom: 5.0),
                child: Text(
                  populars_data["address"],
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 13),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: amarillo,
                    size: 16,
                  ),
                  SizedBox(width: 2,),
                  Text(
                    populars_data["star"],
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    " (" + populars_data["rating"] + " ratings)",
                    style: TextStyle(
                        color: gris, fontSize: 13, fontWeight: FontWeight.w600),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    ),
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
            });
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
