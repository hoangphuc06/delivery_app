import 'dart:async';

import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:delivery_app/src/features/presentation/orderTracking/trackOrder.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

// Starting point latitude
double _originLatitude = 10.878358916628754;
// Starting point longitude
double _originLongitude = 106.80697984875968;

class _LocationPageState extends State<LocationPage> {

  Completer<GoogleMapController> _controller = Completer();
  // Configure map position and zoom
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(_originLatitude, _originLongitude),
    zoom: 12,
  );

  _addMarker(LatLng position, String id, BitmapDescriptor descriptor) {
    MarkerId markerId = MarkerId(id);
    Marker marker =
    Marker(markerId: markerId, icon: descriptor, position: position);
    markers[markerId] = marker;
  }

  @override
  void initState() {
    /// add origin marker origin marker
    _addMarker(
      LatLng(_originLatitude, _originLongitude),
      "origin",
      BitmapDescriptor.defaultMarker,
    );
    super.initState();
  }

  bool btnHome = true;
  bool btnWork = false;
  bool btnOther = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   title: Text(
      //     "My Address",
      //     style: TextStyle(
      //       color: Colors.black,
      //     ),
      //   ),
      //   centerTitle: true,
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 6,
            child: Stack(
              children: [
                GoogleMap(
                  mapType: MapType.normal,
                  initialCameraPosition: _kGooglePlex,
                  myLocationEnabled: true,
                  tiltGesturesEnabled: true,
                  compassEnabled: true,
                  scrollGesturesEnabled: true,
                  zoomGesturesEnabled: true,
                  zoomControlsEnabled: false,
                  markers: Set<Marker>.of(markers.values),
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                  },
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select your location",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.w500
                      )
                    ),
                  SizedBox(height: 20,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.mapMarkedAlt,color: greyone,size: 20,),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: headerText(
                              text:
                                  '6, Thu Duc, HCM City',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color:greyone)),
                      Container(
                        alignment: Alignment.centerRight,
                        width: 100,
                        child: Text(
                          "Change",
                          style: TextStyle(
                              color: green,
                              fontSize: 15,
                              fontWeight: FontWeight.w500
                          )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Divider(
                    thickness: 1,
                  ),

                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(
                        "Tag this location for later",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 17,
                            fontWeight: FontWeight.w500
                        )
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Wrap(
                    direction: Axis.horizontal,
                    spacing: 15.0,
                    runSpacing: 10.0,
                    alignment: WrapAlignment.spaceBetween,
                    children: [
                      _roundedButtonFilter(() {
                        setState(() {
                          btnHome = true;
                          btnWork = false;
                          btnOther = false;
                        });
                      }, btnHome, 'Home'),
                      _roundedButtonFilter(() {
                        setState(() {
                          btnHome = false;
                          btnWork = true;
                          btnOther = false;
                        });
                      }, btnWork, 'Work'),
                      _roundedButtonFilter(() {
                        setState(() {
                          btnHome = false;
                          btnWork = false;
                          btnOther = true;
                        });
                      }, btnOther, 'Other'),
                    ],
                  ),
                  Expanded(child: Container()),
                  Container(
                    width: double.infinity,
                    child: createButton(
                      labelButton: "Save",
                      func: (){
                        Navigator.pop(context);
                      },
                      buttonColor: green,
                    ),
                  )
                ],
              ),
            )
          )
          // Container(
          //   height: 100,
          //   child: createButton(
          //       context: context,
          //       func: () {
          //         Navigator.pushNamed(context, 'tabs');
          //       },
          //       icon: AssetImage('assets/ic_change_password.png'),
          //       labelButton: 'Log in',
          //       buttonColor: orange),
          // )
        ],
      ),
    );
  }

  Widget _roundedButtonFilter(func, bool isActive, String labelText) {
    return ButtonTheme(
      minWidth: 110,
      child: RaisedButton(
        onPressed: func,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: isActive ? primary : placeholderBg,
        elevation: 0.5,
        child: Container(
          // padding: EdgeInsets.only(left: 12,right: 12),
          child: headerText(
              text: labelText,
              color: isActive ? white : Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 15),
        ),
      ),
    );
  }

}
