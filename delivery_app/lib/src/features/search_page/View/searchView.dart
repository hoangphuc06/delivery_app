import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/header_text.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon:Icon(
                Icons.close,
                color: Colors.black,
                size: 40.0,),
              onPressed: ()=>{Navigator.pop(context)},
            ),
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(children: [
                  Container(
                    margin:EdgeInsets.only(top:20.0),
                    alignment:Alignment.centerLeft,
                    child: headerText('Search', Colors.black, FontWeight.bold, 30.0)),
                  _searchInput(context),
                ],)
              )
            ]
          ),)
        ],  
      ),
    );
  }
}

Widget _searchInput(BuildContext context){
  return Container(
    height: 40.0,
    margin:EdgeInsets.only(top: 20.0),
    padding: EdgeInsets.only(left:5.0),
    decoration: BoxDecoration(
      color: Color.fromRGBO(142, 142, 147, 1.2),
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: TextField(
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(top: 5.0),
        prefixIcon: Icon(Icons.search,color: gris,),
        hintText: "Search",
        border: OutlineInputBorder(borderSide: BorderSide.none)
      ),
    ),
  );
}