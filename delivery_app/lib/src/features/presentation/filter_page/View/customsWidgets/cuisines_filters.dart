import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:flutter/material.dart';

class CuisinesFilters extends StatefulWidget {
  const CuisinesFilters({Key? key}) : super(key: key);

  @override
  _CuisinesFiltersState createState() => _CuisinesFiltersState();
}

class _CuisinesFiltersState extends State<CuisinesFilters> {
  bool btnAmerican = false;
  bool btnSushi = false;
  bool btnAsia = false;
  bool btnPizza = false;
  bool btnDesserts = false;
  bool btnFastFood = false;
  bool btnVietNamese = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Wrap(
          direction: Axis.horizontal,
          alignment: WrapAlignment.start,
          children: [
            _roundedButtonFilter(() {
              setState(() {
                btnAmerican = !btnAmerican;
              });
            }, btnAmerican, 'American'),
            _roundedButtonFilter(() {
              setState(() {
                btnAsia = !btnAsia;
              });
            }, btnAsia, 'Asia'),
            _roundedButtonFilter(() {
              setState(() {
                btnPizza = !btnPizza;
              });
            }, btnPizza, 'Pizza'),
            _roundedButtonFilter(() {
              setState(() {
                btnSushi = !btnSushi;
              });
            }, btnSushi, 'Sushi'),
            _roundedButtonFilter(() {
              setState(() {
                btnVietNamese = !btnVietNamese;
              });
            }, btnVietNamese, 'VietNam'),
            _roundedButtonFilter(() {
              setState(() {
                btnFastFood = !btnFastFood;
              });
            }, btnFastFood, 'FastFood'),
            _roundedButtonFilter(() {
              setState(() {
                btnDesserts = !btnDesserts;
              });
            }, btnDesserts, 'Desserts'),
          ],
        ),
      ],
    );
  }
}

Widget _roundedButtonFilter(func, bool isActive, String labelText) {
  return Container(
    width: 120,
    height: 50,
    margin: EdgeInsets.only(left: 5),
    child: createButton(
        labelButton: labelText,
        labelButtonColor: isActive ? orange : gris,
        func: func,
        buttonColor: white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
          side: BorderSide(color: isActive ? orange : gris),
        )),
  );
}
