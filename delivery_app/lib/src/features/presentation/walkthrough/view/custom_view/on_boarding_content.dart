import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/size/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    Key? key,
    this.title,
    this.description,
    this.image,
  }) : super(key: key);
  final title, description, image;

  @override
  Widget build(BuildContext context) {
    double sizeH = SizeConfig.blockSizeH!;
    double sizeV = SizeConfig.blockSizeV!;
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          Container(
            height: sizeV * 50,
            child: SvgPicture.asset(
              image,
              height: sizeV * 25,
              width: sizeH * 25,
              fit: BoxFit.contain,
            ),
          ),

          Text(
            title,
            style: TextStyle(
              fontFamily: 'Klasik',
              color:  green,
              fontSize: SizeConfig.blockSizeH! * 7,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: sizeV * 5,),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: SizeConfig.blockSizeH! * 4.5,
              //fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }
}
