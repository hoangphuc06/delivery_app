import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {

  GoogleMapController? myController;

  final LatLng _center = const LatLng(10.762622,106.660172);

  void _onMapCreated(GoogleMapController controller) {
    myController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GoogleMap(
              mapType: MapType.normal,
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
                buttonColor: orange
            ),
          )
        ],
      ),
    );
  }
}
