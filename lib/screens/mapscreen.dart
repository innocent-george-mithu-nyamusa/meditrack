import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Completer<GoogleMapController> _googleMApController = Completer();

  _onMapCreated(GoogleMapController controller) {
    _googleMApController.complete(controller);
  }


  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return GoogleMap(
      zoomGesturesEnabled: true,
      myLocationEnabled: true,
      compassEnabled: true,
      myLocationButtonEnabled: true,
      onMapCreated: _onMapCreated,
      mapType: MapType.normal,
      initialCameraPosition:
      CameraPosition(target: LatLng(-17.8273428, 31.047500300000003), zoom: 30.4746, ),
    );
  }
}
