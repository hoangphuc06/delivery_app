import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class FoodGroupFilter extends StatefulWidget {
  const FoodGroupFilter({Key? key}) : super(key: key);

  @override
  _FoodGroupFilterState createState() => _FoodGroupFilterState();
}

class _FoodGroupFilterState extends State<FoodGroupFilter> {
  bool btnAmerican = false;
  bool btnSushi = false;
  bool btnAsia = false;
  bool btnPizza = false;
  bool btnDesserts = false;
  bool btnFastFood = false;
  bool btnVietNamese = false;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      spacing: 10.0,
      runSpacing: 10.0,
      alignment: WrapAlignment.spaceBetween,
      children: [
        _roundedButtonFilter(() {
          setState(() {
            btnAmerican = !btnAmerican;
          });
        }, btnAmerican, 'Dairy'),
        _roundedButtonFilter(() {
          setState(() {
            btnAsia = !btnAsia;
          });
        }, btnAsia, 'Pizza'),
        _roundedButtonFilter(() {
          setState(() {
            btnPizza = !btnPizza;
          });
        }, btnPizza, 'Pizza'),
        _roundedButtonFilter(() {
          setState(() {
            btnSushi = !btnSushi;
          });
        }, btnSushi, 'Breakfast'),
        _roundedButtonFilter(() {
          setState(() {
            btnVietNamese = !btnVietNamese;
          });
        }, btnVietNamese, 'Soups'),
        _roundedButtonFilter(() {
          setState(() {
            btnFastFood = !btnFastFood;
          });
        }, btnFastFood, 'Salads'),
        _roundedButtonFilter(() {
          setState(() {
            btnDesserts = !btnDesserts;
          });
        }, btnDesserts, 'Burger'),
        _roundedButtonFilter(() {
          setState(() {
            btnDesserts = !btnDesserts;
          });
        }, btnDesserts, 'Chicken'),
        _roundedButtonFilter(() {
          setState(() {
            btnDesserts = !btnDesserts;
          });
        }, btnDesserts, 'Meat'),
      ],
    );
  }
}

// Widget _roundedButtonFilter(func, bool isActive, String labelText) {
//   return Container(
//     width: 120,
//     height: 50,
//     margin: EdgeInsets.only(left: 5),
//     child: createButton(
//         labelButton: labelText,
//         labelButtonColor: isActive ? orange : gris,
//         func: func,
//         buttonColor: white,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(30.0),
//           side: BorderSide(color: isActive ? orange : gris),
//         )),
//   );
// }

Widget _roundedButtonFilter(func, bool isActive, String labelText) {
  return ButtonTheme(
    minWidth: 80,
    height: 30,
    child: RaisedButton(
      onPressed: func,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide(color: orange)),
      color: isActive ? orange : white,
      elevation: 0.5,
      child: headerText(
          text: labelText,
          color: isActive ? white : Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 15),
    ),
  );
}
