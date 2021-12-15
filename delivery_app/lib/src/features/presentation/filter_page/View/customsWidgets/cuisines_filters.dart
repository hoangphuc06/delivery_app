import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
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
        }, btnAmerican, 'Food'),
        _roundedButtonFilter(() {
          setState(() {
            btnAsia = !btnAsia;
          });
        }, btnAsia, 'Drinks'),
        _roundedButtonFilter(() {
          setState(() {
            btnDesserts = !btnDesserts;
          });
        }, btnDesserts, 'Desserts'),
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
    minWidth: 110,
    child: RaisedButton(
      onPressed: func,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      color: isActive ? primary : placeholderBg,
      elevation: 0.5,
      child: Container(
        // padding: EdgeInsets.only(left: 12,right: 12),
        child: headerText(
            text: labelText,
            color: isActive ? white : Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 15),
      ),
    ),
  );
}
