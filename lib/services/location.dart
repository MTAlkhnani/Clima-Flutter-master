import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  //Location(this.latitude, this.longitude);
  double latitude;
  double longitude;
  Position position;
  Future<void> getCurrentLocation() async {
    try {
      position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
    //print(position);
  }
}
