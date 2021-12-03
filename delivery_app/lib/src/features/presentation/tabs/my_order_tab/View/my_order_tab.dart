import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:delivery_app/src/features/presentation/tabs/my_order_tab/View/components/empty_order_view.dart';
import 'package:flutter/material.dart';

class MyOrderTab extends StatefulWidget {
  const MyOrderTab({Key? key}) : super(key: key);

  @override
  _MyOrderTabState createState() => _MyOrderTabState();
}

class _MyOrderTabState extends State<MyOrderTab> {
  final emptyOrderState = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgGreyPage,
      body: emptyOrderState
          ? EmptyOrderView()
          : CustomScrollView(
              slivers: [
                SliverAppBar(
                  centerTitle: true,
                  elevation: 0.5,
                  leading: Text(''),
                  backgroundColor: white,
                  title: headerText(
                      text: 'My Order',
                      color: primaryColor,
                      fontSize: 17,
                      fontWeight: FontWeight.w600),
                ),
                SliverList(
                    delegate: SliverChildListDelegate([
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                      children: [
                        _orders(context),
                        SizedBox(
                          height: 40,
                        ),
                        checkoutResume(context)
                      ],
                    ),
                  ),
                ]))
              ],
            ),
    );
  }
}

Widget _orders(context) {
  return Column(
    children: [
      _cardOrder(context),
    ],
  );
}

Widget _cardOrder(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10.0),
    margin: EdgeInsets.symmetric(vertical: 10.0),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color.fromRGBO(248, 248, 248, 1.0),
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(210, 211, 215, 1.0),
              spreadRadius: 1.0,
              blurRadius: 4.0)
        ]),
    child: Column(
      children: [
        Row(
          children: [_cardOrderTopContent()],
        ),
        Column(
          children: [
            _items(context),
            _items(context),
            _items(context),
          ],
        ),
        _moreContent(context)
      ],
    ),
  );
}

Widget _cardOrderTopContent() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(top: 7.0, bottom: 7.0, right: 20.0),
          child: headerText(
            text: "Little Creatures - Club Street",
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                Icons.location_on,
                color: gris,
                size: 16.0,
              ),
              headerText(
                  text: '87 Botsford Circle Apt',
                  color: gris,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: 110.0,
                height: 20.0,
                child: RaisedButton(
                  elevation: 0.5,
                  shape: StadiumBorder(),
                  color: orange,
                  textColor: white,
                  onPressed: () {},
                  child: headerText(
                      text: 'Free Delivery', fontSize: 11.0, color: white),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );
}

Widget _items(context) {
  return Container(
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerText(
              text: 'Special Gajananad Bhel',
              color: orange,
              fontWeight: FontWeight.w300,
              fontSize: 15.0),
          headerText(
              text: 'Mixed vegetables, Chicken Egg',
              color: gris,
              fontWeight: FontWeight.w300,
              fontSize: 12.0),
        ],
      ),
      trailing: headerText(
          text: '17.20 \$',
          color: gris,
          fontWeight: FontWeight.w300,
          fontSize: 15.0),
    ),
  );
}

Widget _moreContent(context) {
  return Container(
    child: ListTile(
      title: headerText(
          text: 'Add more items',
          color: rosa,
          fontWeight: FontWeight.w600,
          fontSize: 17.0),
    ),
  );
}

Widget checkoutResume(context) {
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.symmetric(vertical: 10.0),
    width: double.infinity,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: white,
        boxShadow: [
          BoxShadow(
              color: Color.fromRGBO(210, 211, 215, 1.0),
              spreadRadius: 1.0,
              blurRadius: 4.0),
        ]),
    child: Column(
      children: [
        _itemCheckoutResume(
            title: 'Subtotal', value: '93.40 \$', context: context),
        _itemCheckoutResume(
            title: 'Tax & Fee', value: '2.00 \$', context: context),
        _itemCheckoutResume(title: 'Delivery', value: 'Free', context: context),
        _buttonCheckoutResume(context),
      ],
    ),
  );
}

Widget _itemCheckoutResume(
    {title: String, value: String, context: BuildContext}) {
  return Container(
    decoration: BoxDecoration(
        border:
            Border(bottom: BorderSide(color: Theme.of(context).dividerColor))),
    child: ListTile(
      title:
          headerText(text: title, fontWeight: FontWeight.w500, fontSize: 15.0),
      trailing:
          headerText(text: value, fontWeight: FontWeight.w500, fontSize: 15.0),
    ),
  );
}

Widget _buttonCheckoutResume(context) {
  return Container(
      width: double.infinity,
      height: 45.0,
      margin: EdgeInsets.only(top: 10.0),
      child: RaisedButton(
        elevation: 0.5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: orange,
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Container(
              margin: EdgeInsets.only(left: 50),
              child: headerText(
                  text: "Continue",
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: white),
            ),
            Container(
              child: headerText(
                  text: "95.40 \$",
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: white),
            )
          ],
        ),
      ));
}
