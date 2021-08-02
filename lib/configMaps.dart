import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
import './Models/drivers.dart';
import 'package:firebase_auth/firebase_auth.dart';
import './Models/allUsers.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

String mapKey = "AIzaSyDcQH8BCqhKM6quesFbv9w2Jnlwa8g2YAQ";

User firebaseUser;

Users userCurrentInfo;

User currentfirebaseUser;

StreamSubscription<Position> homeTabPageStreamSubscription;

StreamSubscription<Position> rideStreamSubscription;

final assetsAudioPlayer = AssetsAudioPlayer();

Position currentPosition;

Drivers driversInformation;

String title="";
double starCounter=0.0;

String rideType="";
