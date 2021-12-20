import 'package:delivery_app/src/colors/colors.dart';
import 'package:flutter/material.dart';

class PriceFilter extends StatefulWidget {
  const PriceFilter({Key? key}) : super(key: key);

  @override
  _PriceFilterState createState() => _PriceFilterState();
}

class _PriceFilterState extends State<PriceFilter> {
  //Properties
  RangeValues _values = RangeValues(0, 200);
  int _minPrice = 0;
  int _maxPrice = 200;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          '$_minPrice \k',
          style: TextStyle(fontSize: 16),
        ),
        Container(
          width: 300,
          child: RangeSlider(
            activeColor: green,
            inactiveColor: gris,
            values: _values,
            min: 0,
            max: 500.0,
            onChanged: (RangeValues newValues) {
              setState(() {
                _values = newValues;
                _minPrice = _values.start.round();
                _maxPrice = _values.end.round();
              });
            },
          ),
        ),
        Text(
          '$_maxPrice \k',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
