import 'package:carousel_slider/carousel_slider.dart';
import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/data/popular_data.dart';
import 'package:delivery_app/src/features/data/recent_data.dart';
import 'package:delivery_app/src/features/data/shop_data.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class ExploreTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
          length: 6,
          child: NestedScrollView(
            physics: NeverScrollableScrollPhysics(),
            headerSliverBuilder: (context, isScolled){
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.white,
                  collapsedHeight: 440,
                  expandedHeight: 440,
                  flexibleSpace: Container(
                    child: Column(
                      children: [
                        _buildHeader(),
                        _topBar(context),
                        //_categoryBar(context),
                        Container(
                          padding: EdgeInsets.only(left: 16, right: 16, bottom: 8, top: 16),
                          alignment: Alignment.centerLeft,
                          child: headerText(
                              text: "Discover new places",
                              color: Colors.black,
                              fontSize: 20),
                        ),
                        _shopsSlider(context),
                        // Container(
                        //   alignment: Alignment.centerLeft,
                        //   padding: const EdgeInsets.only(left: 16, right: 16, top: 8),
                        //   child: headerText(
                        //       text: "Popular this week",
                        //       color: Colors.black,
                        //       fontSize: 20),
                        // ),
                        // _populares(context, populars_data[0]),
                        // _populares(context, populars_data[1]),
                        // _populares(context, populars_data[2]),
                        // _populares(context, populars_data[3]),
                        // Container(
                        //   alignment: Alignment.centerLeft,
                        //   padding: const EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 8),
                        //   child: headerText(
                        //       text: "Recommend for you",
                        //       color: Colors.black,
                        //       fontSize: 20),
                        // ),
                        // //_shopsSlider(context),
                        // SizedBox(
                        //   height: 50,
                        // ),
                        // GestureDetector(
                        //     onTap: () {
                        //       Navigator.pushNamed(context, 'collections');
                        //     },
                        //     child: _headers(context, "Collections", "Show all")),
                        // _sliderCollections(),
                      ],
                    ),
                  ),
                ),
                SliverPersistentHeader(
                    delegate: MyDelegate(
                      TabBar(
                        tabs: [
                          Tab(text: 'Recent'),
                          Tab(text: 'Favorite'),
                          Tab(text: 'Rating'),
                          Tab(text: 'Popular'),
                          Tab(text: 'Trending'),
                          Tab(text: 'Discount'),
                        ],
                        indicatorColor: orange,
                        unselectedLabelColor: primaryColor,
                        labelColor: orange,
                        isScrollable: true,
                      ),
                    ),
                    floating: true,
                    pinned: true)
              ];
            },
            body: TabBarView(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      _shopItem_t2(context, recents_data[0]),
                      _shopItem_t2(context, recents_data[1]),
                      _shopItem_t2(context, recents_data[2]),
                      _shopItem_t2(context, recents_data[3]),
                      _shopItem_t2(context, recents_data[4]),
                      _shopItem_t2(context, recents_data[5]),
                      _shopItem_t2(context, recents_data[6]),
                      _shopItem_t2(context, recents_data[7]),
                      _shopItem_t2(context, recents_data[8]),
                      _shopItem_t2(context, recents_data[9]),
                      SizedBox(height: 50,)
                    ],
                  ),
                ),

                SingleChildScrollView(
                  child: Column(
                    children: [
                      _shopItem_t2(context, recents_data[0]),
                      _shopItem_t2(context, recents_data[2]),
                      _shopItem_t2(context, recents_data[3]),
                      _shopItem_t2(context, recents_data[6]),
                      _shopItem_t2(context, recents_data[7]),
                      _shopItem_t2(context, recents_data[9]),
                      SizedBox(height: 50,)
                    ],
                  ),
                ),

                SingleChildScrollView(
                  child: Column(
                    children: [
                      _shopItem_t2(context, recents_data[0]),
                      _shopItem_t2(context, recents_data[1]),
                      _shopItem_t2(context, recents_data[2]),
                      _shopItem_t2(context, recents_data[3]),
                      _shopItem_t2(context, recents_data[4]),
                      _shopItem_t2(context, recents_data[5]),
                      _shopItem_t2(context, recents_data[6]),
                      _shopItem_t2(context, recents_data[7]),
                      _shopItem_t2(context, recents_data[8]),
                      _shopItem_t2(context, recents_data[9]),
                      SizedBox(height: 50,)
                    ],
                  ),
                ),

                SingleChildScrollView(
                  child: Column(
                    children: [
                      _shopItem_t2(context, recents_data[0]),
                      _shopItem_t2(context, recents_data[1]),
                      _shopItem_t2(context, recents_data[2]),
                      _shopItem_t2(context, recents_data[3]),
                      _shopItem_t2(context, recents_data[4]),
                      _shopItem_t2(context, recents_data[5]),
                      _shopItem_t2(context, recents_data[6]),
                      _shopItem_t2(context, recents_data[7]),
                      _shopItem_t2(context, recents_data[8]),
                      _shopItem_t2(context, recents_data[9]),
                      SizedBox(height: 50,)
                    ],
                  ),
                ),

                SingleChildScrollView(
                  child: Column(
                    children: [
                      _shopItem_t2(context, recents_data[0]),
                      _shopItem_t2(context, recents_data[1]),
                      _shopItem_t2(context, recents_data[2]),
                      _shopItem_t2(context, recents_data[3]),
                      _shopItem_t2(context, recents_data[4]),
                      _shopItem_t2(context, recents_data[5]),
                      _shopItem_t2(context, recents_data[6]),
                      _shopItem_t2(context, recents_data[7]),
                      _shopItem_t2(context, recents_data[8]),
                      _shopItem_t2(context, recents_data[9]),
                      SizedBox(height: 50,)
                    ],
                  ),
                ),

                SingleChildScrollView(
                  child: Column(
                    children: [
                      _shopItem_t2(context, recents_data[0]),
                      _shopItem_t2(context, recents_data[1]),
                      _shopItem_t2(context, recents_data[2]),
                      _shopItem_t2(context, recents_data[3]),
                      _shopItem_t2(context, recents_data[4]),
                      _shopItem_t2(context, recents_data[5]),
                      _shopItem_t2(context, recents_data[6]),
                      _shopItem_t2(context, recents_data[7]),
                      _shopItem_t2(context, recents_data[8]),
                      _shopItem_t2(context, recents_data[9]),
                      SizedBox(height: 50,)
                    ],
                  ),
                ),
              ],
            ),
      )),
    );
  }
}

class MyDelegate extends SliverPersistentHeaderDelegate {
  MyDelegate(this.tabBar);
  final TabBar tabBar;
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      child: tabBar,
    );
  }
  @override
  double get maxExtent => tabBar.preferredSize.height;

  @override
  double get minExtent => tabBar.preferredSize.height;
  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

Widget _buildHeader() {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 8),
        Text("Hello", style: TextStyle(fontSize: 16)),
        Text(
          "Cameron Cook,",
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

Widget _shopsSlider(BuildContext context) {
  return Container(
    height: 260,
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
      margin: EdgeInsets.only(right: 14, top: 4, bottom: 4, left: 2),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image(
              width: 300,
              height: 150,
              fit: BoxFit.cover,
              image: AssetImage(shops_data["image"]),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10.0),
            width: 290,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  shops_data["name"],
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
                Icon(Icons.bookmark, size: 20, color: shops_data["like"]=="like"? orange: Colors.grey[400],)
              ],
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
            margin: EdgeInsets.only(top: 7.0),
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
                      shops_data["star"],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "(" + shops_data["rating"] + ")",
                      style: TextStyle(
                          color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
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


