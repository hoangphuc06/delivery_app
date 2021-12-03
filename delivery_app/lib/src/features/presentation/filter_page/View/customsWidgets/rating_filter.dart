import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class RatingFilter extends StatefulWidget {
  const RatingFilter({Key? key}) : super(key: key);

  @override
  _RatingFilterState createState() => _RatingFilterState();
}

class _RatingFilterState extends State<RatingFilter> {
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
        }, btnAmerican, '1'),
        _roundedButtonFilter(() {
          setState(() {
            btnAsia = !btnAsia;
          });
        }, btnAsia, '2'),
        _roundedButtonFilter(() {
          setState(() {
            btnPizza = !btnPizza;
          });
        }, btnPizza, '3'),
        _roundedButtonFilter(() {
          setState(() {
            btnSushi = !btnSushi;
          });
        }, btnSushi, '4'),
        _roundedButtonFilter(() {
          setState(() {
            btnVietNamese = !btnVietNamese;
          });
        }, btnVietNamese, '5'),
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
    minWidth: 30,
    child: RaisedButton(
        onPressed: func,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: isActive ? primary : placeholderBg,
        elevation: 0.5,
        child: Container(
        width: 30,
          child: Row(
            children: [
              Expanded(
                child: headerText(
                    text: labelText,
                    color: isActive ? white : Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 17),
              ),
              Expanded(
                child: Icon(
                  Icons.star,
                  color: isActive ? white : primary1,
                ),
              )
            ],
          ),
        )),
  );
}
