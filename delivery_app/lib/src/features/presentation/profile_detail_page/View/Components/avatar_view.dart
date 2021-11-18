import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/utils/styles/box_decoration.dart';
import 'package:flutter/material.dart';

class AvatarView extends StatelessWidget {
  final String backgroundImage;

  AvatarView({required this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: 142,
          height: 142,
          decoration: createBoxDecorationWithShadow(
              borderRadiusGeometry: BorderRadius.circular(65)),
          child: CircleAvatar(backgroundImage: NetworkImage(backgroundImage)),
        ),
        Transform.translate(
          offset: Offset(0, -35),
          child: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: rosa, borderRadius: BorderRadius.circular(20)),
            child: Icon(Icons.camera_alt, color: Colors.white, size: 20),
          ),
        )
      ],
    );
  }
}
