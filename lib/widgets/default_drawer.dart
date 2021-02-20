import 'package:all_parking/app_config.dart';
import 'package:all_parking/features/auth/presentation/employee/employee_auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../res/drawer_messages.dart';
import '../res/messages.dart';
import '../res/theme.dart';
import '../features/auth/presentation/auth_bloc.dart';
import 'drawer_list_tile.dart';

class DefaultDrawer extends StatelessWidget {
  const DefaultDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(child: _buildDrawerHeader()),
          Expanded(flex: 3, child: _buildDrawerItems(context)),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      color: AppColors.primaryColor,
      child: const DisplayNameAndUserType(),
    );
  }

  Widget _buildDrawerItems(BuildContext context) {
    return Column(
      children: [
        ...DrawerMessages.items.map((item) => DrawerListTile(item)).toList(),
        DrawerListTile(
          DrawerItem(
            Messages.logoutLabel,
            icon: Icons.logout,
            customOnTap: () => context.read<AuthBloc>().add(const AuthEvent.signedOut()),
          ),
        ),
      ],
    );
  }
}

class DisplayNameAndUserType extends StatelessWidget {
  const DisplayNameAndUserType({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppConfig.isManager ? _blocBuilderWhenManager() : _blocBuilderWhenEmployee();
  }

  Widget _blocBuilderWhenManager() {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final manager = state.maybeWhen(orElse: () => null, authenticated: (manager) => manager);
        return _buildColumn(displayName: manager.displayName);
      },
    );
  }

  Widget _blocBuilderWhenEmployee() {
    return BlocBuilder<EmployeeAuthBloc, EmployeeAuthState>(
      builder: (context, state) {
        final employee = state.maybeWhen(orElse: () => null, authenticated: (employee) => employee);
        return _buildColumn(displayName: employee.displayName);
      },
    );
  }

  Widget _buildColumn({@required String displayName}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          displayName,
          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 22),
        ),
        Text(
          Messages.signedInUserType(),
          style: const TextStyle(color: Colors.white, fontSize: 12),
        ),
      ],
    );
  }
}
