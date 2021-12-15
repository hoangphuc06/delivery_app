import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class TagView extends StatefulWidget {
  const TagView({Key? key}) : super(key: key);

  @override
  _TagViewState createState() => _TagViewState();
}

class _TagViewState extends State<TagView> {

  bool btnBurger = false;
  bool btnStarBucks = false;
  bool btnPizza = false;
  bool btnRice = false;
  bool btnDesserts = false;
  bool btnCoffee = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 15.0,
      runSpacing: 0.0,
      alignment: WrapAlignment.spaceBetween,
      children: [
        _roundedButtonFilter(() {
          setState(() {
            btnBurger = !btnBurger;
          });
        }, btnBurger, 'Burger Meel'),
        _roundedButtonFilter(() {
          setState(() {
            btnStarBucks = !btnStarBucks;
          });
        }, btnStarBucks, 'Starbucks'),
        _roundedButtonFilter(() {
          setState(() {
            btnPizza = !btnPizza;
          });
        }, btnPizza, 'Pizza Hut'),
        _roundedButtonFilter(() {
          setState(() {
            btnRice = !btnRice;
          });
        }, btnRice, 'Rice Chicken'),
        _roundedButtonFilter(() {
          setState(() {
            btnDesserts = !btnDesserts;
          });
        }, btnDesserts, 'Desserts'),
        _roundedButtonFilter(() {
          setState(() {
            btnCoffee = !btnCoffee;
          });
        }, btnCoffee, 'Coffee'),
      ],
    );
  }
}

Widget _roundedButtonFilter(func, bool isActive, String labelText) {
  return ButtonTheme(
    minWidth: 80,
    height: 30,
    child: RaisedButton(
      onPressed: func,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          //side: BorderSide(color: orange)
      ),
      color: isActive ? green : placeholderBg,
      elevation: 0.5,
      child: headerText(
          text: labelText,
          color: isActive ? white : Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 15),
    ),
  );
}
