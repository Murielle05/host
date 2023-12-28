import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  Location location = new Location();

  bool? _serviceEnabled;
  PermissionStatus? _permissionGranted;
  LocationData? _locationData;

  void initializedLocation () async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled!) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled!) {
        return;
      }
    }

  _permissionGranted = await location.hasPermission();
  if (_permissionGranted == PermissionStatus.denied) {
  _permissionGranted = await location.requestPermission();
  if (_permissionGranted != PermissionStatus.granted) {
  return;
  }
  }

  _locationData = await location.getLocation();
  print("longitude: ${_locationData!.longitude}, lat: ${_locationData!.latitude} " );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    initializedLocation();
  }
  static LatLng cotonou = LatLng(6.3724685, 2.3261369);
  static LatLng paris = LatLng(48.866667, 2.333333);

  Marker _cotonouMarker = Marker(
    markerId: MarkerId("cotonou"),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueGreen),
    position: cotonou,
    infoWindow: InfoWindow(
        title: "Cotonou"
    ),
  );

  Marker _parisMarker = Marker(
      markerId: MarkerId("paris"),
      icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
      position: paris,
      infoWindow: InfoWindow(
      title: "Paris",
    )
  );
  Widget build(BuildContext context) {
    return GoogleMap(
        zoomControlsEnabled: true,
        zoomGesturesEnabled: true,
        markers: {
          _cotonouMarker,
          _parisMarker
        },
        mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
            target: cotonou,
            zoom: 17
        ),
      );
  }
}
