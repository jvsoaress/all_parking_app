import 'dart:ui';

import 'package:all_parking/features/parking/presentation/home/bloc/parking_lot_watcher_bloc.dart';
import 'package:all_parking/widgets/current_parking_lot_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../../../../res/constants.dart';
import '../../../../../res/messages.dart';
import '../../../../../res/theme.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../../widgets/default_drawer.dart';
import '../../../../../widgets/no_parking_lots_found.dart';
import '../../../../../widgets/parking_lot_watcher_builder.dart';
import '../../../../auth/presentation/auth_bloc.dart';
import 'components/custom_app_bar.dart';
import 'components/parking_lot_dashboard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    context.read<ParkingLotWatcherBloc>().add(const ParkingLotWatcherEvent.watchStarted());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeWhen(
          unauthenticated: () => Navigator.of(context).pushReplacementNamed(Constants.signInManagerRoute),
          orElse: () {},
        );
      },
      child: AppScaffold(
        customAppBar: CustomAppBar(),
        drawer: const DefaultDrawer(),
        body: _buildBody(),
        floatingActionButton: _buildCustomFAB(context),
      ),
    );
  }

  SpeedDial _buildCustomFAB(BuildContext context) {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      children: [
        _buildFABMenuItem(
          labelText: Messages.checkOutVehicleLabel,
          icon: Icons.north_east,
          color: AppColors.errorColor,
        ),
        _buildFABMenuItem(
          labelText: Messages.checkInVehicleLabel,
          icon: Icons.south_east,
          color: AppColors.checkColor,
          onTap: () => Navigator.of(context).pushNamed(Constants.checkInVehicleRoute),
        ),
      ],
    );
  }

  SpeedDialChild _buildFABMenuItem({String labelText, Color color, IconData icon, void Function() onTap}) {
    return SpeedDialChild(
      label: labelText,
      labelStyle: const TextStyle(fontWeight: FontWeight.bold),
      backgroundColor: color,
      child: Icon(icon),
      onTap: onTap,
    );
  }

  Widget _buildBody() {
    return ParkingLotWatcherBuilder(
      onSuccess: (_) => CurrentParkingLotBuilder(
        builder: (parkingLot) => ParkingLotDashboard(parkingLot),
        noParkingLotWidget: const NoParkingLotsFound(),
      ),
    );
  }
}
