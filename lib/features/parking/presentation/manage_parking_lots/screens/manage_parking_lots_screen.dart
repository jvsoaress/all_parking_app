import 'package:all_parking/features/parking/presentation/manage_parking_lots/bloc/share_qr_codes/share_qr_codes_bloc.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share/share.dart';

import '../../../../../res/constants.dart';
import '../../../../../res/messages.dart';
import '../../../../../service_locator.dart';
import '../../../../../widgets/app_scaffold.dart';
import '../../../../../widgets/default_drawer.dart';
import '../../../../../widgets/parking_lot_list_builder.dart';
import '../../bloc/parking_lots/manager/manager_parking_lots_bloc.dart';
import '../../bloc/parking_lots/parking_lots_event.dart';
import '../bloc/manage_parking_lots_bloc.dart';

class ManageParkingLotsScreen extends StatelessWidget {
  const ManageParkingLotsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<ManageParkingLotsBloc>()),
        BlocProvider(create: (context) => getIt<ShareQrCodesBloc>()),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<ManageParkingLotsBloc, ManageParkingLotsState>(
            listener: (context, state) => state.maybeWhen(
              orElse: () => null,
              success: () {
                context.read<ManagerParkingLotsBloc>().add(const ParkingLotsEvent.fetchRequested());
                return FlushbarHelper.createInformation(message: Messages.parkingLotDeleted).show(context);
              },
              error: (f) => FlushbarHelper.createError(message: f.message).show(context),
            ),
          ),
          BlocListener<ShareQrCodesBloc, ShareQrCodesState>(
            listener: (context, state) => state.maybeWhen(
              orElse: () => null,
              success: (file) => Share.shareFiles([file.path]),
              error: (f) => FlushbarHelper.createError(message: f.message).show(context),
            ),
          ),
        ],
        child: AppScaffold(
          scrollable: false,
          drawer: const DefaultDrawer(),
          customAppBar: _buildCustomAppBar(context),
          body: _buildBody(),
        ),
      ),
    );
  }

  AppBar _buildCustomAppBar(BuildContext context) {
    return AppBar(
      title: Text(Messages.manageParkingLotsScreenTitle),
      actions: [
        IconButton(
          icon: Icon(Icons.add),
          onPressed: () => Navigator.of(context).pushNamed(Constants.addParkingLotRoute),
        )
      ],
    );
  }

  Widget _buildBody() {
    return BlocBuilder<ManageParkingLotsBloc, ManageParkingLotsState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const ParkingLotListBuilder(headerText: Messages.manageParkingLotsYourParkingLotsLabel, allowActions: true),
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (f) => Center(child: Text(f.message)),
        );
      },
    );
  }
}
