import 'package:delivery_app/src/colors/colors.dart';
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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          label: headerText(
              text: "Anadir a la Cesta 95.000 VNĐ",
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w600
          ),
        backgroundColor: orange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: orange,
            expandedHeight: 395,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                    width: double.infinity,
                    height: 350,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/ic_welcome.png'),
                  ),
                  Container(
                    decoration: BoxDecoration(color: Color.fromRGBO(0, 0, 0, 1.5)),
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
            leading: Builder(builder: (BuildContext context) {
              return BackButton(color: Colors.white,);
            },),
            actions: [
              // Container(
              //   margin: EdgeInsets.all(10),
              //   child: Image(
              //     width: 28,
              //     height: 28,
              //     image: AssetImage(""),
              //   ),
              // ),
              IconButton(
                icon: Icon(Icons.share, color: Colors.white, size: 30,),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.bookmark_border, color: Colors.white, size: 30,),
                onPressed: () {},
              ),
            ],
          ),
          SliverList(
              delegate: SliverChildListDelegate([
                _headers(text: "Populars"),
                _sliderCards(),
                _headers(text: "Full Menu"),
                _menuList(context),
                _headers(text: "Reviews"),
                _reviews(),
                _headers(text: "Your Rating"),
                _yourRating(),
                SizedBox(height: 150,)
              ])
          ),
        ],
      ),
    );
  }
}

Widget _promoButton() {
  return Container(
    margin: EdgeInsets.only(top: 121, left: 30, right: 15),
    width: double.infinity,
    height: 25,
    child: Row(
      children: [
        RaisedButton(
          onPressed: () {

          },
          elevation: 0.5,
          shape: StadiumBorder(),
          child: headerText(
              text: "Free Delivery",
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.normal
          ),
          color: orange,
        ),
      ],
    ),
  );
}

Widget _infoPlace() {
  return Column(
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        margin: EdgeInsets.symmetric(vertical: 7.0),
        child: headerText(
          text: "Boon Lay Ho Huat Fried Prawn Noodle",
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0),
        child: Row(
          children: [
            Icon(Icons.location_on, color: gris,),
            headerText(
                text: "03 Jameson Manors Apt. 177",
                color: gris,
                fontWeight: FontWeight.w500,
                fontSize: 15.0
            ),
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
      )
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.star, color: Colors.white, size: 19.0,),
                headerText(
                  text: "4.5",
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold
                ),
              ],
            ),
            headerText(
                text: "272 Ratings",
                color: gris,
                fontSize: 15,
                fontWeight: FontWeight.w500
            ),
          ],
        ),
        Container(
          height: 40,
          decoration: BoxDecoration(
            border: Border(right: BorderSide(color: Colors.white))
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.bookmark, color: Colors.white, size: 19.0,),
                headerText(
                    text: "137k",
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                ),
              ],
            ),
            headerText(
                text: "Favorites",
                color: gris,
                fontSize: 15,
                fontWeight: FontWeight.w500
            ),
          ],
        ),
        Container(
          height: 40,
          decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Colors.white))
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.photo, color: Colors.white, size: 19.0,),
                headerText(
                    text: "345",
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                ),
              ],
            ),
            headerText(
                text: "Photos",
                color: gris,
                fontSize: 15,
                fontWeight: FontWeight.w500
            ),
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
                fontWeight: FontWeight.bold
            ),
            headerText(
                text: "Pickup on your time. Your order is \nready when you are",
                color: primaryColor,
                fontSize: 13,
                fontWeight: FontWeight.w400
            ),
          ],
        ),
        Spacer(),
        RaisedButton(
          onPressed: () {

          },
          elevation: 0.5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: orange,
          child: headerText(
              text: "Order Now",
              color: Colors.white,
              fontSize: 13,
              fontWeight: FontWeight.bold
          ),
        )
      ],
    ),
  );
}

Widget _headers({text: String}) {
  return Container(
    margin: EdgeInsets.only(top: 20, bottom: 5),
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: headerDoubleText(textHeader: text, textAction: ""),
  );
}

Widget _sliderCards() {
  return Container(
    height: 210,
    padding: EdgeInsets.only(left: 10),
    child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return _cards();
        }
    ),
  );
}

Widget _cards() {
  return Container(
    margin: EdgeInsets.all(8),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image(
            image: AssetImage('assets/ic_welcome.png'),
            width: 200,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: headerText(
              text: "Peanut Chaat with Dahi",
              color: Colors.black,
              fontSize: 15,
              fontWeight: FontWeight.bold
          ),
        ),
        Container(
          alignment: Alignment.center,
          child: headerText(
              text: "120.000 VNĐ",
              color: gris,
              fontSize: 14,
              fontWeight: FontWeight.w500
          ),
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: headerText(
                  text: "Selecciona",
                  color: orange,
                  fontSize: 15,
                  fontWeight: FontWeight.w500
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10, left: 90),
              child: Icon(
                Icons.add_circle_outline,
                color: orange,
                size: 20,
              )
            )
          ],
        ),
      ],
    ),
  );
}

Widget _menuList(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(left: 10),
    child: Column(
      children: [
        _menuItem(context, "Salads", "2"),
        _menuItem(context, "Chicken", "5"),
        _menuItem(context, "Soups", "6"),
        _menuItem(context, "Vegetables", "7"),
      ],
    ),
  );
}

Widget _menuItem(BuildContext context, String text, String itemCount) {
  return Container(
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(color: gris))
    ),
    child: Column(
      children: [
        ListTile(
          title: headerText(
              text: text,
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w300
          ),
          trailing: headerText(
              text: itemCount,
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.w300
          ),
        ),
        _sliderCards()
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
      }
    ),
  );
}

Widget _cardReviews() {
  var cmt = "Day la mot loi nhan xet chan thanh tu tan day long cua em, banh rat ngon va thom nhung gia hoi mac.";
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
                      fontWeight: FontWeight.bold
                  ),
                  headerText(
                      text: "45 reviews",
                      color: gris,
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                  ),
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
                          fontWeight: FontWeight.w400
                      ),
                      Icon(Icons.star, color: Colors.white, size: 14,),
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
                          fontWeight: FontWeight.w400
                      ),
                      Icon(Icons.star, color: Colors.white, size: 14,),
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
                          fontWeight: FontWeight.w400
                      ),
                      Icon(Icons.star, color: Colors.white, size: 14,),
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
                          fontWeight: FontWeight.w400
                      ),
                      Icon(Icons.star, color: Colors.white, size: 14,),
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
                          fontWeight: FontWeight.w400
                      ),
                      Icon(Icons.star, color: Colors.white, size: 14,),
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
                          fontWeight: FontWeight.w400
                      ),
                      Icon(Icons.star, color: Colors.white, size: 14,),
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
              fontWeight: FontWeight.w400
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10),
          child: headerText(
              text: "+ Edit your review",
              color: orange,
              fontSize: 15,
              fontWeight: FontWeight.w500
          ),
        ),
      ],
    ),
  );
}
