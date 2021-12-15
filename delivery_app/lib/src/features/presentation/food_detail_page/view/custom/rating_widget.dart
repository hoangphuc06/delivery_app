import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class RatingFoodWidget extends StatefulWidget {
  const RatingFoodWidget({Key? key}) : super(key: key);

  @override
  _RatingFoodWidgetState createState() => _RatingFoodWidgetState();
}

class _RatingFoodWidgetState extends State<RatingFoodWidget> {
  bool btn1 = false;
  bool btn2 = false;
  bool btn3 = false;
  bool btn4 = false;
  bool btn5 = true;
  @override
  Widget build(BuildContext context) {
    return Wrap(
      direction: Axis.horizontal,
      alignment: WrapAlignment.spaceBetween,
      children: [
        _roundedButtonFilter(() {
          setState(() {
            btn1 = true;
            btn2 = false;
            btn3 = false;
            btn4 = false;
            btn5 = false;
          });
        }, btn1, '1'),
        _roundedButtonFilter(() {
          setState(() {
            btn1 = false;
            btn2 = true;
            btn3 = false;
            btn4 = false;
            btn5 = false;
          });
        }, btn2, '2'),
        _roundedButtonFilter(() {
          setState(() {
            btn1 = false;
            btn2 = false;
            btn3 = true;
            btn4 = false;
            btn5 = false;
          });
        }, btn3, '3'),
        _roundedButtonFilter(() {
          setState(() {
            btn1 = false;
            btn2 = false;
            btn3 = false;
            btn4 = true;
            btn5 = false;
          });
        }, btn4, '4'),
        _roundedButtonFilter(() {
          setState(() {
            btn1 = false;
            btn2 = false;
            btn3 = false;
            btn4 = false;
            btn5 = true;
          });
        }, btn5, '5'),
      ],
    );
  }
}

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
                    fontSize: 15),
              ),
              Expanded(
                child: Icon(
                  Icons.star,
                  color: isActive ? white : amarillo,
                ),
              )
            ],
          ),
        )),
  );
}
