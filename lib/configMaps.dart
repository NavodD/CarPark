import 'package:firebase_auth/firebase_auth.dart';
import './Models/allUsers.dart';

String mapKey = "AIzaSyDcQH8BCqhKM6quesFbv9w2Jnlwa8g2YAQ";

User firebaseUser;

Users userCurrentInfo;

int driverRequestTimeOut = 40;
String statusRide = "";
String rideStatus = "Driver is Coming";
String carDetailsDriver = "";
String driverName = "";
String driverphone = "";

double starCounter=0.0;
String title="";
String carRideType="";

String serverToken = "key=AAAAP27gl1I:APA91bEkEqW3KZAO8UkgcE6Vq_5MC4OEfkpusLd6-xqD9nlMNCV3htAANAMON3jRj6xZInJ6Z716RdP6Ep-Bi4ubGKgEw6smAYMtfe5hwC4NuxXuqwb2VXTL_u3qDFA7687-C2iY_0wg";