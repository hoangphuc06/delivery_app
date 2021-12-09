import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  GoogleMapController? myController;

  final LatLng _center = const LatLng(10.762622, 106.660172);

  void _onMapCreated(GoogleMapController controller) {
    myController = controller;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.arrow_back_ios),
              ],
            )),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          "My Address",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 8),
            decoration: BoxDecoration(
                color: Color.fromRGBO(142, 142, 147, 1.2),
                borderRadius: BorderRadius.all(Radius.circular(10))),
            width: size.width - 50,
            height: 50,
            child: Container(
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 20,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(color: Colors.black, fontSize: 17),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: size.width - 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.mapMarkedAlt,color: greyone,size: 20,),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: headerText(
                        text:
                            'Hồ Chí Minh, Phường 7, Quận 11, Thành phố Hồ Chí Minh',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color:greyone)),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: GoogleMap(
              mapType: MapType.normal,
              myLocationEnabled:true,
              myLocationButtonEnabled: true,
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 10.0,
              ),
            ),
          ),
          Container(
            height: 100,
            child: createButton(
                context: context,
                func: () {
                  Navigator.pushNamed(context, 'tabs');
                },
                icon: AssetImage('assets/ic_change_password.png'),
                labelButton: 'Log in',
                buttonColor: orange),
          )
        ],
      ),
    );
  }
}
