import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:delivery_app/src/features/presentation/tabs/explore_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs/tabs_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EmptyOrderView extends StatelessWidget {
  // const EmptyView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 250,
                height: 250,
                image: AssetImage('assets/empty_cart.png'),
              ),
              Container(
                // margin: EdgeInsets.only(top: 10.0),
                child: headerText(
                    text: 'Cart Empty',
                    color: primary,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                  margin: EdgeInsets.only(top: 20.0),
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: headerText(
                      text:
                          'Good food is always cooking! Go ahead, order some yummy items from the menu.',
                      textAlign: TextAlign.center,
                      color: gris,
                      fontSize: 17,
                      fontWeight: FontWeight.w500)),
              SizedBox(
                height: 30,
              ),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 120.0),
                  child: _buttonApplyFilter(context)),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buttonApplyFilter(context) {
    return Container(
        width: double.infinity,
        height: 50,
        child: RaisedButton(
          elevation: 0.5,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          color: primary,
          onPressed: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context)=>TabsPage()));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Icon(Icons.add,color: white,),
              headerText(
                text: "Add Items",
                fontSize: 17,
                fontWeight: FontWeight.bold,
                color: white),
            ]
          ),
        ));
  }
}
