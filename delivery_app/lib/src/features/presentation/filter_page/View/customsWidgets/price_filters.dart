import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class PriceFilter extends StatefulWidget {
  const PriceFilter({Key? key}) : super(key: key);

  @override
  _PriceFilterState createState() => _PriceFilterState();
}

class _PriceFilterState extends State<PriceFilter> {
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
    
      alignment: WrapAlignment.spaceBetween,
      children: [
        _roundedButtonFilter(() {
          setState(() {
            btnAmerican = !btnAmerican;
          });
        }, btnAmerican, '\$'),
        _roundedButtonFilter(() {
          setState(() {
            btnAsia = !btnAsia;
          });
        }, btnAsia, '\$\$'),
        // _roundedButtonFilter(() {
        //   setState(() {
        //     btnPizza = !btnPizza;
        //   });
        // }, btnPizza, 'Pizza'),
        // _roundedButtonFilter(() {
        //   setState(() {
        //     btnSushi = !btnSushi;
        //   });
        // }, btnSushi, 'DE'),
      
        _roundedButtonFilter(() {
          setState(() {
            btnFastFood = !btnFastFood;
          });
        }, btnFastFood, '\$\$\$'),
        _roundedButtonFilter(() {
          setState(() {
            btnDesserts = !btnDesserts;
          });
        }, btnDesserts, '\$\$\$\$'),
          _roundedButtonFilter(() {
          setState(() {
            btnVietNamese = !btnVietNamese;
          });
        }, btnVietNamese, '\$\$\$\$\$'),
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
    minWidth: 5,
    child: RaisedButton(
      onPressed: func,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      color: isActive ? primary : placeholderBg,
      elevation: 0.5,
      child: headerText(
          text: labelText,
          color: isActive ? white : Colors.black,
          fontWeight: FontWeight.w400,
          fontSize: 15),
    ),
  );
}
