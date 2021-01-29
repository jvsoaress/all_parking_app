import 'package:all_parking/features/auth/presentation/sign_in/screens/sign_in_screen.dart';
import 'package:all_parking/features/auth/presentation/sign_up/screens/sign_up_screen.dart';
import 'package:all_parking/features/auth/presentation/splash/splash_screen.dart';
import 'package:all_parking/features/parking/presentation/add_parking_lot/screens/add_parking_lot_screen.dart';
import 'package:all_parking/features/parking/presentation/home/screens/home_screen.dart';
import 'package:all_parking/features/parking/presentation/manage_parking_lots/screens/manage_parking_lots_screen.dart';
import 'package:all_parking/features/parking/presentation/select_parking_lot/screens/select_parking_lot_screen.dart';
import 'package:all_parking/res/constants.dart';
import 'package:flutter/widgets.dart';

Map<String, Widget Function(BuildContext)> buildAppRoutes() {
  return {
    Constants.splashRoute: (context) => const SplashScreen(),
    Constants.homeRoute: (context) => HomeScreen(),
    Constants.signInRoute: (context) => const SignInScreen(),
    Constants.signUpRoute: (context) => const SignUpScreen(),
    Constants.addParkingLotRoute: (context) => AddParkingLotScreen(),
    Constants.selectParkingLotRoute: (context) => SelectParkingLotScreen(),
    Constants.manageParkingLotsRoute: (context) => ManageParkingLotsScreen(),
  };
}
