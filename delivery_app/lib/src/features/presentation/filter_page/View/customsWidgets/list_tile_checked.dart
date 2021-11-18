import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';

class ListTileChecked extends StatefulWidget {
  final String? texto;
  final bool? isActive;
  final Function? func;

  ListTileChecked({
    Key? key,
    this.texto,
    this.isActive,
    this.func,
  }) : super(key: key);

  @override
  _ListTileCheckedState createState() => _ListTileCheckedState();
}

class _ListTileCheckedState extends State<ListTileChecked> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      listTile(
        context: context,
        text: widget.texto,
        isActive: widget.isActive,
        func: widget.func,
      )
    ]);
  }
}

Widget listTile({BuildContext? context, text: String, isActive: bool, func}) {
  return Container(
    decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
      color: Theme.of(context!).dividerColor,
    ))),
    child: ListTile(
      onTap: func,
      title: headerText(
          text: text,
          color: isActive ? orange : Colors.black,
          fontWeight: FontWeight.w300,
          fontSize: 17),
      trailing: isActive
          ? Icon(
              Icons.check,
              color: isActive ? orange : gris,
            )
          : Text(''),
    ),
  );
}
