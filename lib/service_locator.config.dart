// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:http/http.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'features/parking/presentation/bloc/vehicles_watcher/active_vehicles/active_vehicles_watcher_bloc.dart';
import 'features/parking/presentation/manage_employees/bloc/add_employee/add_employee_bloc.dart';
import 'features/parking/domain/usecases/add_parking_lot.dart';
import 'features/parking/presentation/add_parking_lot/bloc/add_parking_lot_bloc.dart';
import 'app_navigator.dart';
import 'features/auth/presentation/auth_bloc.dart';
import 'features/auth/domain/usecases/auto_sign_in_employee.dart';
import 'utils/cep_service.dart';
import 'features/parking/presentation/check-in/bloc/check_in_bloc.dart';
import 'features/parking/domain/usecases/check_in_vehicle.dart';
import 'features/parking/presentation/check_out/bloc/check_out_bloc.dart';
import 'features/parking/domain/usecases/check_out_vehicle.dart';
import 'features/qr_code/data/repositories/code_repository.dart';
import 'features/parking/presentation/scan_code/bloc/code_scanner_bloc.dart';
import 'features/parking/presentation/current_parking_lot.dart';
import 'features/parking/domain/usecases/delete_employee.dart';
import 'features/parking/domain/usecases/delete_parking_lot.dart';
import 'features/parking/domain/usecases/edit_parking_lot.dart';
import 'utils/email_service.dart';
import 'features/auth/presentation/employee/employee_auth_bloc.dart';
import 'features/auth/data/repositories/employee_auth_repository.dart';
import 'features/parking/presentation/bloc/parking_lots/employee/employee_parking_lot_bloc.dart';
import 'features/parking/data/repositories/employee_repository.dart';
import 'utils/error_report_service.dart';
import 'features/parking/domain/usecases/fetch_current_manager.dart';
import 'features/parking/domain/usecases/fetch_parking_lots.dart';
import 'features/parking/domain/usecases/fetch_single_parking_lot.dart';
import 'features/parking/presentation/home/bloc/find_check_out_bloc.dart';
import 'features/qr_code/presentation/bloc/generate_codes/generate_codes_bloc.dart';
import 'features/qr_code/domain/usecases/generate_qr_codes.dart';
import 'features/auth/domain/usecases/get_current_user.dart';
import 'features/qr_code/domain/repositories/i_code_repository.dart';
import 'features/auth/domain/repositories/i_employee_auth_repository.dart';
import 'features/parking/domain/repositories/i_employee_repository.dart';
import 'features/auth/data/datasources/i_local_data_source.dart';
import 'features/auth/domain/repositories/i_manager_auth_repository.dart';
import 'features/parking/domain/repositories/i_manager_repository.dart';
import 'features/parking/domain/repositories/i_parking_lot_repository.dart';
import 'features/parking/presentation/bloc/vehicles_watcher/inactive_vehicles/inactive_vehicles_watcher_bloc.dart';
import 'features/auth/data/datasources/local_data_source.dart';
import 'features/parking/presentation/manage_employees/bloc/manage_employees_bloc.dart';
import 'features/parking/presentation/manage_parking_lots/bloc/manage_parking_lots_bloc.dart';
import 'features/auth/data/repositories/manager_auth_repository.dart';
import 'features/parking/presentation/bloc/parking_lots/manager/manager_parking_lots_bloc.dart';
import 'features/parking/data/repositories/manager_repository.dart';
import 'features/parking/data/repositories/parking_lot_repository.dart';
import 'features/qr_code/core/utils/qr_local_storage.dart';
import 'service_locator.dart';
import 'features/parking/presentation/reports/bloc/reports_bloc.dart';
import 'features/qr_code/presentation/bloc/save_codes/save_codes_bloc.dart';
import 'features/parking/presentation/manage_parking_lots/bloc/share_qr_codes/share_qr_codes_bloc.dart';
import 'features/auth/presentation/manager/sign_in/bloc/sign_in_bloc.dart';
import 'features/auth/domain/usecases/sign_in_employee.dart';
import 'features/auth/presentation/employee/sign_in/bloc/sign_in_employee_bloc.dart';
import 'features/auth/domain/usecases/sign_in_manager.dart';
import 'features/auth/presentation/manager/sign_up/bloc/sign_up_bloc.dart';
import 'features/auth/domain/usecases/sign_up_employee.dart';
import 'features/auth/domain/usecases/sign_up_manager.dart';
import 'features/splash/presentation/splash_bloc/splash_bloc.dart';
import 'features/parking/domain/usecases/watch_active_vehicles.dart';
import 'features/parking/domain/usecases/watch_inactive_vehicles.dart';
import 'features/qr_code/core/utils/widget_to_image.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

Future<GetIt> $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) async {
  final gh = GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.lazySingleton<AppNavigator>(() => AppNavigator());
  gh.lazySingleton<CepService>(() => CepService());
  gh.lazySingleton<Client>(() => registerModule.httpClient);
  gh.factory<CodeScannerBloc>(() => CodeScannerBloc());
  gh.lazySingleton<CurrentParkingLot>(() => CurrentParkingLot());
  gh.lazySingleton<EmailService>(() => EmailService(get<Client>()));
  gh.lazySingleton<ErrorReportService>(() => ErrorReportService());
  gh.factory<FindCheckOutBloc>(() => FindCheckOutBloc());
  gh.lazySingleton<FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => registerModule.firebaseFirestore);
  gh.lazySingleton<ICodeRepository>(
      () => CodeRepository(get<FirebaseFirestore>()));
  gh.lazySingleton<IEmployeeRepository>(() =>
      EmployeeRepository(get<FirebaseFirestore>(), get<ErrorReportService>()));
  gh.lazySingleton<IManagerAuthRepository>(() => ManagerAuthRepository(
        get<FirebaseAuth>(),
        get<FirebaseFirestore>(),
        get<ErrorReportService>(),
      ));
  gh.lazySingleton<IManagerRepository>(() => ManagerRepository(
        get<FirebaseFirestore>(),
        get<FirebaseAuth>(),
        get<ErrorReportService>(),
      ));
  gh.lazySingleton<IParkingLotRepository>(() => ParkingLotRepository(
      get<FirebaseFirestore>(), get<ErrorReportService>()));
  gh.lazySingleton<QRLocalStorage>(() => QRLocalStorage());
  gh.factory<ReportsBloc>(() => ReportsBloc());
  gh.factory<ShareQrCodesBloc>(() => ShareQrCodesBloc(get<QRLocalStorage>()));
  final resolvedSharedPreferences = await registerModule.prefs;
  gh.factory<SharedPreferences>(() => resolvedSharedPreferences);
  gh.lazySingleton<SignInManager>(
      () => SignInManager(get<IManagerAuthRepository>()));
  gh.lazySingleton<SignUpManager>(
      () => SignUpManager(get<IManagerAuthRepository>()));
  gh.factory<SplashBloc>(() => SplashBloc());
  gh.lazySingleton<WatchActiveVehicles>(
      () => WatchActiveVehicles(get<IParkingLotRepository>()));
  gh.lazySingleton<WatchInactiveVehicles>(
      () => WatchInactiveVehicles(get<IParkingLotRepository>()));
  gh.lazySingleton<WidgetToImage>(() => WidgetToImage());
  gh.factory<ActiveVehiclesWatcherBloc>(() => ActiveVehiclesWatcherBloc(
      get<WatchActiveVehicles>(), get<CurrentParkingLot>()));
  gh.lazySingleton<AddParkingLot>(() => AddParkingLot(
        get<IParkingLotRepository>(),
        get<IManagerRepository>(),
        get<EmailService>(),
      ));
  gh.factory<AuthBloc>(() => AuthBloc(get<IManagerAuthRepository>()));
  gh.lazySingleton<CheckInVehicle>(() =>
      CheckInVehicle(get<IParkingLotRepository>(), get<CurrentParkingLot>()));
  gh.lazySingleton<CheckOutVehicle>(() =>
      CheckOutVehicle(get<IParkingLotRepository>(), get<CurrentParkingLot>()));
  gh.lazySingleton<DeleteEmployee>(() =>
      DeleteEmployee(get<IManagerRepository>(), get<IEmployeeRepository>()));
  gh.lazySingleton<DeleteParkingLot>(() => DeleteParkingLot(
        get<IParkingLotRepository>(),
        get<IManagerRepository>(),
        get<IEmployeeRepository>(),
      ));
  gh.lazySingleton<EditParkingLot>(
      () => EditParkingLot(get<IParkingLotRepository>()));
  gh.lazySingleton<FetchCurrentManager>(
      () => FetchCurrentManager(get<IManagerRepository>()));
  gh.lazySingleton<FetchParkingLots>(() => FetchParkingLots(
      get<IParkingLotRepository>(), get<IManagerRepository>()));
  gh.lazySingleton<GenerateQRCodes>(
      () => GenerateQRCodes(get<ICodeRepository>()));
  gh.lazySingleton<ILocalDataSource>(
      () => LocalDataSource(get<SharedPreferences>()));
  gh.factory<InactiveVehiclesWatcherBloc>(() => InactiveVehiclesWatcherBloc(
      get<WatchInactiveVehicles>(), get<CurrentParkingLot>()));
  gh.factory<ManageEmployeesBloc>(() =>
      ManageEmployeesBloc(get<DeleteEmployee>(), get<FetchCurrentManager>()));
  gh.factory<ManageParkingLotsBloc>(
      () => ManageParkingLotsBloc(get<DeleteParkingLot>()));
  gh.factory<ManagerParkingLotsBloc>(() => ManagerParkingLotsBloc(
      get<FetchParkingLots>(), get<CurrentParkingLot>()));
  gh.factory<SaveCodesBloc>(
      () => SaveCodesBloc(get<WidgetToImage>(), get<QRLocalStorage>()));
  gh.factory<SignInBloc>(() => SignInBloc(get<SignInManager>()));
  gh.factory<SignUpBloc>(() => SignUpBloc(get<SignUpManager>()));
  gh.lazySingleton<SignUpEmployee>(() => SignUpEmployee(
        get<FetchCurrentManager>(),
        get<IEmployeeRepository>(),
        get<IManagerRepository>(),
      ));
  gh.factory<AddEmployeeBloc>(() => AddEmployeeBloc(get<SignUpEmployee>()));
  gh.factory<AddParkingLotBloc>(() => AddParkingLotBloc(
        get<AddParkingLot>(),
        get<EditParkingLot>(),
        get<CepService>(),
        get<CurrentParkingLot>(),
      ));
  gh.factory<CheckInBloc>(() => CheckInBloc(get<CheckInVehicle>()));
  gh.factory<CheckOutBloc>(() => CheckOutBloc(get<CheckOutVehicle>()));
  gh.factory<GenerateCodesBloc>(
      () => GenerateCodesBloc(get<GenerateQRCodes>()));
  gh.lazySingleton<IEmployeeAuthRepository>(() => EmployeeAuthRepository(
        get<ILocalDataSource>(),
        get<FirebaseFirestore>(),
        get<ErrorReportService>(),
      ));
  gh.lazySingleton<SignInEmployee>(
      () => SignInEmployee(get<IEmployeeAuthRepository>()));
  gh.factory<SignInEmployeeBloc>(
      () => SignInEmployeeBloc(get<SignInEmployee>()));
  gh.lazySingleton<AutoSignInEmployee>(() => AutoSignInEmployee(
      get<IEmployeeAuthRepository>(), get<ILocalDataSource>()));
  gh.factory<EmployeeAuthBloc>(() => EmployeeAuthBloc(
      get<IEmployeeAuthRepository>(), get<AutoSignInEmployee>()));
  gh.lazySingleton<FetchSingleParkingLot>(() => FetchSingleParkingLot(
      get<IParkingLotRepository>(), get<IEmployeeAuthRepository>()));
  gh.lazySingleton<GetCurrentUser>(() => GetCurrentUser(
      get<IManagerAuthRepository>(), get<IEmployeeAuthRepository>()));
  gh.factory<EmployeeParkingLotBloc>(() => EmployeeParkingLotBloc(
      get<FetchSingleParkingLot>(), get<CurrentParkingLot>()));
  return get;
}

class _$RegisterModule extends RegisterModule {}
