import 'dart:async';

import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:delivery_app/src/utils/Extensions/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:im_stepper/stepper.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  _TrackOrderState createState() => _TrackOrderState();
}

// Starting point latitude
double _originLatitude = 10.878358916628754;
// Starting point longitude
double _originLongitude = 106.80697984875968;
// Destination latitude
double _destLatitude = 10.88926836355066;
// Destination Longitude
double _destLongitude = 106.77645225432158;
// Markers to show points on the map
Map<MarkerId, Marker> markers = {};

PolylinePoints polylinePoints = PolylinePoints();
Map<PolylineId, Polyline> polylines = {};

class _TrackOrderState extends State<TrackOrder> {

  bool isLink = false;
  bool isHide = true;
  bool isSwitched = false;

  Completer<GoogleMapController> _controller = Completer();
  // Configure map position and zoom
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(_originLatitude, _originLongitude),
    zoom: 12,
  );

  @override
  void initState() {
    /// add origin marker origin marker
    _addMarker(
      LatLng(_originLatitude, _originLongitude),
      "origin",
      BitmapDescriptor.defaultMarker,
    );

    // Add destination marker
    _addMarker(
      LatLng(_destLatitude, _destLongitude),
      "destination",
      BitmapDescriptor.defaultMarkerWithHue(90),
    );

    _getPolyline();

    super.initState();
  }

  // This method will add markers to the map based on the LatLng position
  _addMarker(LatLng position, String id, BitmapDescriptor descriptor) {
    MarkerId markerId = MarkerId(id);
    Marker marker =
    Marker(markerId: markerId, icon: descriptor, position: position);
    markers[markerId] = marker;
  }

  _addPolyLine(List<LatLng> polylineCoordinates) {
    PolylineId id = PolylineId("poly");
    Polyline polyline = Polyline(
      color: Colors.red,
      polylineId: id,
      points: polylineCoordinates,
      width: 8,
    );
    polylines[id] = polyline;
    setState(() {});
  }

  void _getPolyline() async {
    List<LatLng> polylineCoordinates = [];

    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyD5Hh7qfV8wEDAB0P-FF64igi6AisVB8-A",
      PointLatLng(_originLatitude, _originLongitude),
      PointLatLng(_destLatitude, _destLongitude),
      travelMode: TravelMode.driving,
    );
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
      });
    } else {
      print(result.errorMessage);
    }
    _addPolyLine(polylineCoordinates);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        title: headerText(
            text: 'Track Order',
            color: primaryColor,
            fontSize: 17,
            fontWeight: FontWeight.w600),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // GoogleMap(
          //   mapType: MapType.terrain,
          //   myLocationEnabled:true,
          //   myLocationButtonEnabled: true,
          //   onMapCreated: _onMapCreated,
          //   initialCameraPosition: CameraPosition(
          //     target: _center,
          //     zoom: 16.0,
          //   ),
          //   polylines: _polyline,
          // ),
          GoogleMap(
            mapType: MapType.normal,
            initialCameraPosition: _kGooglePlex,
            myLocationEnabled: true,
            tiltGesturesEnabled: true,
            compassEnabled: true,
            scrollGesturesEnabled: true,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: false,
            polylines: Set<Polyline>.of(polylines.values),
            markers: Set<Marker>.of(markers.values),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: createButton(
                labelButton: "Detail",
                buttonColor: green,
                func: (){
                  _showBottomSheet();
                }
              ),
            ),
          ),
        ],
      ),
    );
  }

  _customTextInput(String hintText, EdgeInsets edgeInsets) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: ShapeDecoration(
        color: placeholderBg,
        shape: StadiumBorder(),
      ),
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: placeholder,
          ),
          contentPadding: edgeInsets,
        ),
      ),
    );
  }

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
    } else {
      setState(() {
        isSwitched = false;
      });
    }
  }

  _showBottomSheet() => showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    isScrollControlled: true,
    //isDismissible: false,
    context: context,
    builder: (context) {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding:
              EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  headerText(
                      text: 'Trip Route',
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: headerText(
                            text:
                            'KFC Shop \n100, Thu Duc, HCM City',
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                      Container(
                        height: 80,
                        width: Helper.getScreenWidth(
                            context) *
                            0.4,
                        child: IconStepper(
                          alignment: Alignment.topCenter,
                          enableNextPreviousButtons:
                          false,
                          enableStepTapping: false,
                          stepColor: blue,
                          activeStepColor: blue,
                          activeStepBorderColor: white,
                          activeStepBorderWidth: 0.0,
                          activeStepBorderPadding: 0.0,
                          lineColor: bkblue,
                          lineLength: 90.0,
                          lineDotRadius: 3.0,
                          stepRadius: 5,
                          icons: [
                            Icon(
                                Icons
                                    .radio_button_checked,
                                color: blue),
                            Icon(Icons.check,
                                color: blue),
                          ],
                        ),
                      ),
                      Expanded(
                        child: headerText(
                            text: 'Dormitory Zone A \n6, Thu Duc, HCM City',
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.shippingFast,
                            color: blue,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          headerText(
                              text: '22.8 Km',
                              color: greytwo,
                              fontSize: 14)
                        ],
                      ),
                      Column(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.clock,
                            color: blue,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          headerText(
                              text: '30 Minutes',
                              color: greytwo,
                              fontSize: 14)
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(3),
                            decoration: ShapeDecoration(
                                color: bkblue,
                                shape: CircleBorder()),
                            child: CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(
                                  'assets/avt.jpg'),
                              foregroundColor: blue,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              headerText(
                                  text: 'Driver',
                                  fontSize: 24,
                                  fontWeight:
                                  FontWeight.bold),
                              Container(
                                width: 100,
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 12,
                                      color: primary1,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 12,
                                      color: primary1,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 12,
                                      color: primary1,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 12,
                                      color: primary1,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 12,
                                      color: primary1,
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(12),
                          color: red,
                        ),
                        width: 80,
                        padding: EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                        ),
                        child: Center(
                          child: headerText(
                              text: 'Call',
                              color: white,
                              fontWeight: FontWeight.w400,
                              fontSize: 17),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                          BorderRadius.circular(12),
                          color: green,
                        ),
                        width: 80,
                        padding: EdgeInsets.only(
                          top: 10,
                          bottom: 10,
                        ),
                        child: Center(
                          child: headerText(
                              text: 'Chat',
                              color: white,
                              fontWeight: FontWeight.w400,
                              fontSize: 17),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }
  );
}

Widget _buttonCheckoutResume(context) {
  return Container(
      width: double.infinity,
      height: 45.0,
      margin: EdgeInsets.only(top: 10.0),
      child: RaisedButton(
        elevation: 0.5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        color: orange,
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(),
            Container(
              child: headerText(
                  text: "Add Another Credit/Debit Card",
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: white),
            ),
          ],
        ),
      ));
}
