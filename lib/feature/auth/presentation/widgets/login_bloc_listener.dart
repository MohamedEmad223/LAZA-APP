
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:laza_app/config/routes/routes.dart';
import 'package:laza_app/core/utils/app_dialog.dart';
import 'package:laza_app/feature/auth/cubit/cubit/auth_cubit.dart';


class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      child: SizedBox.shrink(),
      listener: (context, state) {
      if (state is LoginFailure) {
         AppDialog().showApiError(context, state.error);
      }else if(state is LoginSuccess){
        // i want to navigate to HomeView using navigator  and remove all previous routes
        Navigator.of(context).pushNamedAndRemoveUntil(Routes.home, (route) => false);

      }
    });
  }
}