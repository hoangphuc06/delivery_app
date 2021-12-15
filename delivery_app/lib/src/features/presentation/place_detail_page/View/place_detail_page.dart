import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/data/burger_data.dart';
import 'package:delivery_app/src/features/data/chicken_data.dart';
import 'package:delivery_app/src/features/data/dessert_data.dart';
import 'package:delivery_app/src/features/data/drinks_data.dart';
import 'package:delivery_app/src/features/data/fast_data.dart';
import 'package:delivery_app/src/features/data/kfc_popular_data.dart';
import 'package:delivery_app/src/features/data/recent_data.dart';
import 'package:delivery_app/src/features/data/rice_data.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_double.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlaceDetailPage extends StatefulWidget {
  const PlaceDetailPage({Key? key}) : super(key: key);

  @override
  _PlaceDetailPageState createState() => _PlaceDetailPageState();
}

class _PlaceDetailPageState extends State<PlaceDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 7,
        child: NestedScrollView(
          physics: NeverScrollableScrollPhysics(),
          headerSliverBuilder: (context, isScolled){
            return [
              SliverAppBar(
                iconTheme: IconThemeData(
                  color: Colors.white
                ),
                elevation: 0,
                floating: false,
                pinned: true,
                snap: false,
                backgroundColor: green,
                expandedHeight: 305,
                //title: Text("Lotteria", style: TextStyle(color: Colors.white),),
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    children: [
                      Image(
                        width: double.infinity,
                        height: 350,
                        fit: BoxFit.cover,
                        image: AssetImage('assets/shops/kfcs.jpg'),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(0, 0, 0, 1.5),
                          //color: Colors.black.withOpacity(0.5)
                        ),
                        width: double.infinity,
                        height: 350,
                      ),
                      Wrap(
                        children: [
                          _promoButton(),
                          _infoPlace(),
                          _infoPlaceState(),
                          //_offerBanner(),
                        ],
                      ),
                    ],
                  ),
                ),
                actions: [
                  IconButton(
                    icon: Icon(Icons.share, color: Colors.white,),
                    onPressed: () {},
                  ),
                  IconButton(icon: Icon(Icons.bookmark, color: Colors.white,),
                    onPressed: () {},
                  ),
                ],
              ),
              SliverPersistentHeader(
                delegate: MyDelegate(
                  TabBar(
                    tabs: [
                      Tab(text: 'Popular'),
                      Tab(text: 'Chicken'),
                      Tab(text: 'Rice'),
                      Tab(text: 'Hamburger'),
                      Tab(text: 'Fast'),
                      Tab(text: 'Desert'),
                      Tab(text: 'Drinks'),
                    ],
                    indicatorColor: green,
                    unselectedLabelColor: primaryColor,
                    labelColor: green,
                    isScrollable: true,
                  ),
                ),
                floating: false,
                pinned: true,

              )
            ];
          },
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    _foodItem(context, chickens_data[0]),
                    _foodItem(context, chickens_data[1]),
                    _foodItem(context, rices_data[2]),
                    _foodItem(context, rices_data[3]),
                    _foodItem(context, burgers_data[0]),
                    _foodItem(context, fast_data[2]),
                    _foodItem(context, fast_data[3]),
                    _foodItem(context, fast_data[4]),
                    _foodItem(context, desserts_data[0]),
                    _foodItem(context, drinks_data[1]),
                    SizedBox(height: 50,)
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    _foodItem(context, chickens_data[0]),
                    _foodItem(context, chickens_data[1]),
                    _foodItem(context, chickens_data[2]),
                    _foodItem(context, chickens_data[3]),
                    _foodItem(context, chickens_data[4]),
                    _foodItem(context, chickens_data[5]),
                    SizedBox(height: 50,)
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    _foodItem(context, rices_data[0]),
                    _foodItem(context, rices_data[1]),
                    _foodItem(context, rices_data[2]),
                    _foodItem(context, rices_data[3]),
                    _foodItem(context, rices_data[4]),
                    _foodItem(context, rices_data[5]),
                    SizedBox(height: 50,)
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    _foodItem(context, burgers_data[0]),
                    _foodItem(context, burgers_data[1]),
                    SizedBox(height: 50,)
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    _foodItem(context, fast_data[0]),
                    _foodItem(context, fast_data[1]),
                    _foodItem(context, fast_data[2]),
                    _foodItem(context, fast_data[3]),
                    _foodItem(context, fast_data[4]),
                    _foodItem(context, fast_data[5]),
                    _foodItem(context, fast_data[6]),
                    SizedBox(height: 50,)
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    _foodItem(context, desserts_data[0]),
                    _foodItem(context, desserts_data[1]),
                    _foodItem(context, desserts_data[2]),
                    SizedBox(height: 50,)
                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    _foodItem(context, drinks_data[0]),
                    _foodItem(context, drinks_data[1]),
                    _foodItem(context, drinks_data[2]),
                    SizedBox(height: 50,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _foodItem(BuildContext context, data) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, "food-detail");
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
                          Icon(Icons.bookmark, size: 20, color: data["like"]=="like"? rosa: Colors.grey[400],)
                        ],
                      )),
                  Container(
                    //alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(bottom: 7.0),
                    child: Text(
                      data["descr"],
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 13),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        //alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(bottom: 7.0),
                        child: Text(
                          data["price"] + " VNĐ",
                          style: data["discount"]== "0" ? TextStyle(color: green, fontWeight: FontWeight.bold, fontSize: 15):
                          TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 15, fontStyle: FontStyle.italic, decoration: TextDecoration.lineThrough),

                        ),
                      ),
                      data["discount"]!= "0" ?
                      Container(
                        margin: EdgeInsets.only(bottom: 7.0, left: 7.0),
                        child: Text(
                          data["discount"] + " VNĐ",
                          style: TextStyle(color: green, fontWeight: FontWeight.bold, fontSize: 15)
                        ),
                      ): Container(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _promoButton() {
    return Container(
      margin: EdgeInsets.only(top: 119, left: 30, right: 15),
      width: double.infinity,
      height: 25,
      child: Row(
        children: [
          RaisedButton(
            onPressed: (){},
            elevation: 0.5,
            shape: StadiumBorder(),
            child: headerText(
                text: "Free delivery",
                color: Colors.white,
                fontSize: 12
            ),
            color: green,
          )
        ],
      ),
    );
  }

  Widget _infoPlace() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          margin: EdgeInsets.symmetric(vertical: 7.0),
          child: headerText(
              text: "KFC Shop",
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          margin: EdgeInsets.only(bottom: 8.0),
          child: Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.white,
              ),
              SizedBox(width: 5,),
              headerText(
                  text: "10, District 1, HCM City",
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            children: [
              Icon(
                Icons.access_time,
                color: Colors.white,
              ),
              SizedBox(width: 6,),
              headerText(
                  text: "30 min",
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: 15.0),
            ],
          ),
        ),
      ],
    );
  }

  Widget _infoPlaceState() {
    return Container(
      margin: EdgeInsets.only(top: 16.0),
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      height: 70,
      decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.white),
            bottom: BorderSide(color: Colors.white),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.white,
                    size: 19.0,
                  ),
                  headerText(
                      text: "4.8",
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ],
              ),
              headerText(
                  text: "1.9k Ratings",
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ],
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
                border: Border(right: BorderSide(color: Colors.white))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.bookmark,
                    color: Colors.white,
                    size: 19.0,
                  ),
                  headerText(
                      text: "13k",
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ],
              ),
              headerText(
                  text: "Favorites",
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ],
          ),
          Container(
            height: 40,
            decoration: BoxDecoration(
                border: Border(right: BorderSide(color: Colors.white))),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.photo,
                    color: Colors.white,
                    size: 19.0,
                  ),
                  headerText(
                      text: "50",
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ],
              ),
              headerText(
                  text: "Photos",
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ],
          ),
        ],
      ),
    );
  }

  Widget _offerBanner() {
    return Container(
      color: Colors.teal[100],
      padding: EdgeInsets.all(15),
      height: 90,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerText(
                  text: "New! Try Pickup",
                  color: green,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
              headerText(
                  text: "Pickup on your time. Your order is \nready when you are",
                  color: primaryColor,
                  fontSize: 13,
                  fontWeight: FontWeight.w400),
            ],
          ),
          Spacer(),
          RaisedButton(
            onPressed: (){},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            color: green,
            elevation: 0.5,
            child: headerText(
                text: "Order now",
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 13
            ),
          ),
        ],
      ),
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
