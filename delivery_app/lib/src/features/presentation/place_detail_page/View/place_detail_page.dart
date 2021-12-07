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
                backgroundColor: orange,
                expandedHeight: 365,
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
                          _offerBanner(),
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
                    indicatorColor: orange,
                    unselectedLabelColor: primaryColor,
                    labelColor: orange,
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
        // slivers: <Widget>[
        //   SliverAppBar(
        //     backgroundColor: orange,
        //     expandedHeight: 365,
        //     flexibleSpace: FlexibleSpaceBar(
        //       background: Stack(
        //         children: [
        //           Image(
        //             width: double.infinity,
        //             height: 350,
        //             fit: BoxFit.cover,
        //             image: AssetImage('assets/shops/kfcs.jpg'),
        //           ),
        //           Container(
        //             decoration: BoxDecoration(
        //               color: Color.fromRGBO(0, 0, 0, 1.5),
        //               //color: Colors.black.withOpacity(0.5)
        //             ),
        //             width: double.infinity,
        //             height: 350,
        //           ),
        //           Wrap(
        //             children: [
        //               _promoButton(),
        //               _infoPlace(),
        //               _infoPlaceState(),
        //               _offerBanner(),
        //             ],
        //           ),
        //         ],
        //       ),
        //     ),
        //     leading: Builder(
        //       builder: (BuildContext context) {
        //         return BackButton(
        //           color: Colors.white,
        //         );
        //       },
        //     ),
        //     actions: [
        //       IconButton(
        //         icon: Icon(
        //           Icons.share,
        //           color: Colors.white,
        //           size: 30,
        //         ),
        //         onPressed: () {},
        //       ),
        //       IconButton(
        //         icon: Icon(
        //           Icons.bookmark_border,
        //           color: Colors.white,
        //           size: 30,
        //         ),
        //         onPressed: () {},
        //       ),
        //     ],
        //   ),
        //   // SliverList(
        //   //   delegate: SliverChildListDelegate([
        //   //     _headers(text: "Populars"),
        //   //     _sliderPopularCards(),
        //   //     Divider(thickness: 2,),
        //   //     _headers(text: "Full Menu"),
        //   //     _menuList(context),
        //   //     Divider(thickness: 2,),
        //   //     _headers(text: "Reviews"),
        //   //     _reviews(),
        //   //     Divider(thickness: 2,),
        //   //     _headers(text: "Your Rating"),
        //   //     _yourRating(),
        //   //     SizedBox(
        //   //       height: 150,
        //   //     )
        //   // ])),
        // ],
      ),
    );
  }

  Widget _foodItem(BuildContext context, data) {
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
                        style: data["discount"]== "0" ? TextStyle(color: orange, fontWeight: FontWeight.bold, fontSize: 15):
                        TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 15, fontStyle: FontStyle.italic, decoration: TextDecoration.lineThrough),

                      ),
                    ),
                    data["discount"]!= "0" ?
                    Container(
                      margin: EdgeInsets.only(bottom: 7.0, left: 7.0),
                      child: Text(
                        data["discount"] + " VNĐ",
                        style: TextStyle(color: orange, fontWeight: FontWeight.bold, fontSize: 15)
                      ),
                    ): Container(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _showBottomSheet() => showModalBottomSheet(
    //isScrollControlled: true,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(24),
        topRight: Radius.circular(24),
      ),
    ),
    context: context,
    builder: (context) => Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  width: 170,
                  height: 120,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/rice/com-ganuong.png"),
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
                            text: "Cơm gà nướng",
                            color: Colors.black,
                            fontSize: 20)),
                    Container(
                      //alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "Lotteria Shop",
                        style: TextStyle(
                            color: orange,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                    ),
                    Container(
                      //alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        "100.000 VNĐ",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: amarillo,
                    size: 18,
                  ),
                  SizedBox(width: 2,),
                  Text(
                    "4",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "(1k ratings)",
                    style: TextStyle(
                        color: Colors.black, fontSize: 15, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(width: 50,),
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    color: fbButtonColor,
                    size: 18,
                  ),
                  SizedBox(width: 2,),
                  Text(
                    "30 min",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20,),
          // Row(
          //   children: [
          //     Text(
          //       "Material: ",
          //       style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 17,
          //           fontWeight: FontWeight.w500
          //       ),
          //     ),
          //     Text(
          //       "rice, chicken, salah..",
          //       style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 17,
          //           fontWeight: FontWeight.w300
          //       ),
          //     ),
          //   ],
          // ),
          // SizedBox(height: 20,),
          Row(
            children: [
              Text(
                "Quantity",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                  fontWeight: FontWeight.w500
                ),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: orange,
                  shape: BoxShape.circle
                ),
                child: Text("-", style: TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              ),
              SizedBox(width: 15,),
              Text(
                "1",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(width: 15,),
              Container(
                padding: EdgeInsets.all(12),
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                    color: orange,
                    shape: BoxShape.circle
                ),
                child: Text("+", style: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
              ),
            ],
          ),
          Spacer(),
          Container(
            alignment: Alignment.center,
            child: createButton(
                context: context,
                func: () {
                  Navigator.pop(context);
                },
                labelButton: 'Add to cart',
                buttonColor: orange
            ),
          ),
        ],
      ),
    )
  );

  Widget _promoButton() {
    return Container(
      margin: EdgeInsets.only(top: 121, left: 30, right: 15),
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
            color: orange,
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
              text: "Lotteria Shop",
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30.0),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            children: [
              Icon(
                Icons.location_on,
                color: Colors.white,
              ),
              headerText(
                  text: "10, District 1, HCM City",
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
      color: Color.fromRGBO(255, 237, 214, 1),
      padding: EdgeInsets.all(15),
      height: 90,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerText(
                  text: "New! Try Pickup",
                  color: orange,
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
            color: orange,
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

  Widget _reviews() {
    return Container(
      height: 135,
      padding: EdgeInsets.only(left: 10),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return _cardReviews();
          }),
    );
  }

  Widget _cardReviews() {
    var cmt =
        "Day la mot loi nhan xet chan thanh tu tan day long cua em, banh rat ngon va thom nhung gia hoi mac.";
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 10, right: 10),
      width: 350,
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(
                  image: AssetImage('assets/ic_avatar.jpg'),
                  width: 49,
                  height: 43,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    headerText(
                        text: "Mike Smithson",
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                    headerText(
                        text: "45 reviews",
                        color: gris,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  ],
                ),
              ),
              Spacer(),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 60,
                    height: 30,
                    color: orange,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                            text: "4",
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: headerText(
              text: cmt,
              color: gris,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: headerText(
              text: "See full review",
              color: orange,
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  Widget _yourRating() {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 60,
                    height: 30,
                    color: orangeWithHalfOpacity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                            text: "1",
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 60,
                    height: 30,
                    color: orangeWithHalfOpacity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                            text: "2",
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 60,
                    height: 30,
                    color: orangeWithHalfOpacity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                            text: "3",
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 60,
                    height: 30,
                    color: orange,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                            text: "4",
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: 60,
                    height: 30,
                    color: orangeWithHalfOpacity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        headerText(
                            text: "5",
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 14,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: headerText(
                text: "We would love to hear more about your experience!",
                color: gris,
                fontSize: 12,
                fontWeight: FontWeight.w400),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: headerText(
                text: "+ Edit your review",
                color: orange,
                fontSize: 15,
                fontWeight: FontWeight.w500),
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
