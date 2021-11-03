import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Card/favourites_card.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class FavouriteTab extends StatelessWidget {
  const FavouriteTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGrey,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            leading: Text(''),
            backgroundColor: Colors.white,
            title: headerText(
                text: 'My favourites',
                color: primaryColor,
                fontSize: 17,
                fontWeight: FontWeight.w600),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(children: [
                favouritesCard(
                  context,
                  NetworkImage(
                      'https://cdn.huongnghiepaau.com/wp-content/uploads/2019/01/hu-tieu-gio-heo.jpg'),
                  'Thanh Quang`s',
                  '20 Ton Duc Thang st',
                  '5.0',
                  '(500 ratings)',
                  true,
                  isFavourite: true,
                ),
                favouritesCard(
                  context,
                  NetworkImage(
                      'https://cdn.huongnghiepaau.com/wp-content/uploads/2019/01/hu-tieu-gio-heo.jpg'),
                  'Thanh Quang`s',
                  '20 Ton Duc Thang st',
                  '5.0',
                  '(500 ratings)',
                  true,
                  isFavourite: false,
                ),
              ]),
            )
          ]))
        ],
      ),
    );
  }
}
