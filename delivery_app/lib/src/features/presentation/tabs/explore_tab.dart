import 'package:delivery_app/src/colors/colors.dart';
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
                _topBar(context),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Discover new places",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                _sliderCards(),
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
    child: Column(
      children: [
        ClipRect(
          child: Image(
            width: 200,
            height: 250,
            fit: BoxFit.cover,
            image: AssetImage("assets/img_hamberger.jpg"),
          ),
        )
    ],),
  );
}