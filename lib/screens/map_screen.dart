import 'dart:async';

import 'package:chat_app/providers/map_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';


class MapScreen extends StatefulWidget {
  static const String id = 'google_map';

  @override
  State<MapScreen> createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {


  @override
  Widget build(BuildContext context) {
    AppProvider appProvider = Provider.of<AppProvider>(context);
    return SafeArea(
      child: new Scaffold(
        body: appProvider.center == null ? CircularProgressIndicator() : GoogleMap(
          initialCameraPosition:CameraPosition(
              target: appProvider.center,
              zoom: 13),
          onMapCreated: appProvider.onCreate,
          myLocationEnabled: true,

        ),
      ),
    );
  }


}