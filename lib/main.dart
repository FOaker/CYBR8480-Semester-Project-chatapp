import 'package:chat_app/providers/map_provider.dart';
import 'package:chat_app/screens/card_screen.dart';
import 'package:chat_app/screens/dicee_screen.dart';
import 'package:chat_app/screens/music_screen.dart';
import 'package:flutter/material.dart';
import 'package:chat_app/screens/welcome_screen.dart';
import 'package:chat_app/screens/login_screen.dart';
import 'package:chat_app/screens/registration_screen.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/map_screen.dart';
import 'package:geolocator/geolocator.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  LocationPermission permission = await Geolocator.checkPermission();
  bool _isLocationEnabled = await Geolocator.isLocationServiceEnabled();

  bool _hasLocationPermission = prefs.getBool(HAS_PERMISSION) ?? false;

  if(!_isLocationEnabled) {
    await Geolocator.openLocationSettings();
  }else{
    if (!_hasLocationPermission) {
      if (permission != LocationPermission.always) {
        LocationPermission requestpermission =
        await Geolocator.requestPermission();
        if (requestpermission == LocationPermission.always) {
          await prefs.setBool(HAS_PERMISSION, true);
        } else {

        }
      }
    }
  }
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: AppProvider.initialize())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          ChatScreen.id: (context) => ChatScreen(),
          MapScreen.id: (context) => MapScreen(),
          CardScreen.id: (context) => CardScreen(),
          DiceScreen.id: (context) => DiceScreen(),
          MusicScreen.id: (context) => MusicScreen(),
        },
      )));
}
