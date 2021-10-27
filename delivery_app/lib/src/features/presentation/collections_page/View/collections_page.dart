import 'package:delivery_app/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class CollectionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            title: headerText(
                text: 'Collections',
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 17),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.black);
            }),
          ),
          SliverPadding(
            padding: EdgeInsets.only(left: 20.0),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10.0,
              children: [
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
                _card(context),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget _card(BuildContext context) {
  return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'collection_detail');
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
                width: 165,
                height: 190,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://saigonangi.com/wp-content/uploads/2020/10/5-1-15.png')),
          ),
          Container(
            width: 165,
            height: 190,
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 1.3),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(right: 35, bottom: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                headerText(
                    text: 'Asia',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                headerText(
                    text: '200 places',
                    color: Colors.white,
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ],
            ),
          )
        ],
      ));
}
