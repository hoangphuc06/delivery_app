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

  bool btnHome = false;
  bool btnWork = true;
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
          // Container(
          //   padding: EdgeInsets.only(left: 8),
          //   decoration: BoxDecoration(
          //       color: Color.fromRGBO(142, 142, 147, 1.2),
          //       borderRadius: BorderRadius.all(Radius.circular(10))),
          //   width: size.width - 50,
          //   height: 50,
          //   child: Container(
          //     child: Row(
          //       children: [
          //         Icon(
          //           Icons.search,
          //           color: Colors.black,
          //           size: 20,
          //         ),
          //         SizedBox(
          //           width: 5,
          //         ),
          //         Text(
          //           "Search",
          //           style: TextStyle(color: Colors.black, fontSize: 17),
          //         )
          //       ],
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          // Container(
          //   width: size.width - 50,
          //   child: Row(
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //     children: [
          //       FaIcon(FontAwesomeIcons.mapMarkedAlt,color: greyone,size: 20,),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Expanded(
          //           child: headerText(
          //               text:
          //                   'Hồ Chí Minh, Phường 7, Quận 11, Thành phố Hồ Chí Minh',
          //               fontWeight: FontWeight.w500,
          //               fontSize: 14,
          //               color:greyone)),
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   height: 10,
          // ),
          Expanded(
            flex: 6,
            child: Stack(
              children: [
                GoogleMap(
                  mapType: MapType.normal,
                  myLocationEnabled:true,
                  myLocationButtonEnabled: true,
                  onMapCreated: _onMapCreated,
                  initialCameraPosition: CameraPosition(
                    target: _center,
                    zoom: 20.0,
                  ),
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
                                  'Hồ Chí Minh, Phường 7, Quận 11, Thành phố Hồ Chí Minh',
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
                      func: (){},
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
