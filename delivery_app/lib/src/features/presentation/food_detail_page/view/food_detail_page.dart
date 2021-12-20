import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:delivery_app/src/features/presentation/food_detail_page/view/custom/rating_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FoodDetailPage extends StatefulWidget {
  const FoodDetailPage({Key? key}) : super(key: key);

  @override
  _FoodDetailPageState createState() => _FoodDetailPageState();
}

class _FoodDetailPageState extends State<FoodDetailPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              actions: [
                IconButton(icon: Icon(Icons.bookmark, color: Colors.white,),
                  onPressed: () {},
                ),
              ],
              iconTheme: IconThemeData(
                color: Colors.white
              ),
              elevation: 0.5,
              floating: false,
              pinned: true,
              snap: false,
              backgroundColor: green,
              expandedHeight: 216.5,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  children: [
                    Image.asset("assets/chicken/mieng2.jpg", fit: BoxFit.cover, height: 250, width: size.width,)
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            headerText(text: "Fried Chicken (2 Pc)", color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
                            headerText(text: "68.000 VNĐ", color: green, fontSize: 20, fontWeight: FontWeight.bold),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: amarillo,
                                  size: 17,
                                ),
                                SizedBox(width: 2,),
                                Text(
                                  "5",
                                  style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
                                ),
                                Text(
                                  "(4k)",
                                  style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(width: 40,),
                            Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: orange,
                                  size: 17,
                                ),
                                SizedBox(width: 2,),
                                Text(
                                  "500m",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(width: 40,),
                            Row(
                              children: [
                                Icon(
                                  Icons.access_time,
                                  color: fbButtonColor,
                                  size: 17,
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
                        SizedBox(height: 10,),
                        Divider(thickness: 1,),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 16, right: 16,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        headerText(
                          text: "Description:",
                          fontSize: 17,
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "This food include chicken and drink.",
                          style: TextStyle(fontSize: 15),
                        ),

                        SizedBox(height: 20,),
                        headerText(
                          text: "Material:",
                          fontSize: 17,
                        ),
                        SizedBox(height: 10,),
                        Text(
                          "Chicken, egg, milk, flour...",
                          style: TextStyle(fontSize: 15),
                        ),
                        SizedBox(height: 10,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                              image: AssetImage("assets/material/chicken.jpg"),
                              height: 80,
                              width: 80,
                            ),
                            SizedBox(width: 5,),
                            Image(
                              image: AssetImage("assets/material/egg.jpg"),
                              height: 80,
                              width: 80,
                            ),
                            SizedBox(width: 5,),
                            Image(
                              image: AssetImage("assets/material/milk.jpg"),
                              height: 80,
                              width: 80,
                            ),
                            SizedBox(width: 5,),
                            Image(
                              image: AssetImage("assets/material/flour.jpg"),
                              height: 80,
                              width: 80,
                            ),
                            SizedBox(width: 5,),
                          ],
                        ),
                        // SizedBox(height: 10,),
                        // Divider(thickness: 1,),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 16, right: 16, top: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        headerText(
                          text: "Reviews:",
                          fontSize: 17,
                        ),
                        SizedBox(height: 10,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "5",
                              style: TextStyle(fontSize: 50, color: Colors.black, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10,),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.star, color: amarillo,),
                                    Icon(Icons.star, color: amarillo,),
                                    Icon(Icons.star, color: amarillo,),
                                    Icon(Icons.star, color: amarillo,),
                                    Icon(Icons.star, color: amarillo,),
                                  ]
                                ),
                                SizedBox(height: 2,),
                                Text(
                                  "150 reviews",
                                  style: TextStyle(color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w500),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        _cardReviews(),
                        _cardReviews(),
                        _cardReviews(),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        headerText(
                          text: "Your Rating:",
                          fontSize: 17,
                        ),
                        _yourRating()
                      ],
                    ),
                  ),
                  SizedBox(height: 100,)
                ]
              ),
            )
          ]
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: green,
        onPressed: (){
          _showBottomSheet();
        },
        label: Text("Add to cart"),
        foregroundColor: Colors.white,
        icon: Container(
          child: Icon(Icons.shopping_cart),
        ),
      ),
    );
  }

  Widget _yourRating() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      //padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            child: RatingFoodWidget()
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: headerText(
                text: "We would love to hear more about your experience!",
                color: Colors.grey,
                fontSize: 13,
                fontWeight: FontWeight.w500),
          ),
          Container(
            margin: EdgeInsets.only(top: 10),
            child: headerText(
                text: "+ Edit your review",
                color: green,
                fontSize: 15,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }

  _showBottomSheet() => showModalBottomSheet(
    isScrollControlled: true,
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
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image(
                  width: 150,
                  height: 100,
                  fit: BoxFit.cover,
                  image: AssetImage("assets/chicken/mieng2.jpg"),
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
                            text: "Fried Chicken (2 Pc)",
                            color: Colors.black,
                            fontSize: 20)),
                    Container(
                      //alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "KFC Shop",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                            fontSize: 17),
                      ),
                    ),
                    Container(
                      //alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom: 5.0),
                      child: Text(
                        "68.000 VNĐ",
                        style: TextStyle(
                            color: green,
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
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.star,
                    color: amarillo,
                    size: 17,
                  ),
                  SizedBox(width: 2,),
                  Text(
                    "5",
                    style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "(4k)",
                    style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(width: 40,),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: orange,
                    size: 17,
                  ),
                  SizedBox(width: 2,),
                  Text(
                    "500m",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              SizedBox(width: 40,),
              Row(
                children: [
                  Icon(
                    Icons.access_time,
                    color: fbButtonColor,
                    size: 17,
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: placeholderBg,
                ),
                padding:
                EdgeInsets.only(top: 6, bottom: 6, right: 16, left: 16),
                child: Row(
                  children: [
                    FaIcon(
                      FontAwesomeIcons.minus,
                      color: greyone,
                      size: 12,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    headerText(
                        text: "1",
                        color: greyone,
                        fontWeight: FontWeight.w400,
                        fontSize: 17),
                    SizedBox(
                      width: 10,
                    ),
                    FaIcon(
                      FontAwesomeIcons.plus,
                      color: green,
                      size: 13,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            child: createButton(
                context: context,
                func: () {
                  Navigator.pop(context);
                },
                labelButton: 'Add to cart',
                buttonColor: green
            ),
          ),
        ],
      ),
    )
  );

  Widget _cardReviews() {
    var cmt =
        "I really amazing about this food, so good and rather cheap, i'll back when i have time";
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(
                  image: AssetImage('assets/ic_avatar.jpg'),
                  width: 50,
                  height: 50,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    headerText(
                        text: "Mike Smithson",
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                    SizedBox(height: 5,),
                    headerText(
                        text: "06/12/2021",
                        color: gris,
                        fontSize: 13,
                        fontWeight: FontWeight.w500),
                    SizedBox(height: 5,),
                  ],
                ),
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.star, color: amarillo, size: 20,),
                        Icon(Icons.star, color: amarillo, size: 20,),
                        Icon(Icons.star, color: amarillo, size: 20,),
                        Icon(Icons.star, color: amarillo, size: 20,),
                        Icon(Icons.star, color: amarillo, size: 20,),
                      ]
                  ),
                  SizedBox(height: 25,),
                ],
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(top: 10, left: 60),
            child: Text(
              cmt,
              style: TextStyle(fontSize: 15),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5, left: 60),
            child: Text(
              "Show more",
              style: TextStyle(fontSize: 15, color: green, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 5, left: 60),
              child: Divider(thickness: 1,)
          ),
        ],
      ),
    );
  }
}


