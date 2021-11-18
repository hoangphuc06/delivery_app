import 'package:delivery_app/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Card/favourites_card.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class CollectionDetailPage extends StatelessWidget {
  const CollectionDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 230,
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Image(
                      height: double.infinity,
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://saigonangi.com/wp-content/uploads/2020/10/5-1-15.png')),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 1.3),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Center(
                      child: headerText(
                    text: 'Asia \n Restaurant',
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    textAlign: TextAlign.center,
                  ))
                ],
              ),
            ),
            leading: Builder(builder: (BuildContext context) {
              return backButton(context, Colors.black);
            }),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  Container(
                      alignment: Alignment.topLeft,
                      margin: EdgeInsets.symmetric(vertical: 20.0),
                      child: headerText(
                          text: '200 places',
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 17)),
                  Column(
                    children: [
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
                      )
                    ],
                  )
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}
