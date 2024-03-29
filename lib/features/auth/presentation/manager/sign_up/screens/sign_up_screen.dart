import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../res/constants.dart';
import '../../../../../../res/messages.dart';
import '../../../../../../service_locator.dart';
import '../../../../../../widgets/app_scaffold.dart';
import '../bloc/sign_up_bloc.dart';
import 'components/sign_up_form.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignUpBloc>(),
      child: BlocListener<SignUpBloc, SignUpState>(
        listenWhen: (p, c) => p.signUpSuccessOrFailureOption != c.signUpSuccessOrFailureOption,
        listener: (context, state) {
          state.signUpSuccessOrFailureOption.fold(
            () {},
            (either) => either.fold(
              (f) => FlushbarHelper.createError(message: f.message).show(context),
              (_) => Navigator.of(context).pushReplacementNamed(Constants.splashRoute),
            ),
          );
        },
        child: AppScaffold(
          title: Messages.signUpScreenTitle,
          scrollable: true,
          body: const SignUpForm(),
        ),
      ),
    );
  }
}
