import 'package:authorization_test_omega/core/constants/app_keys.dart';
import 'package:authorization_test_omega/core/constants/resolutions.dart';
import 'package:authorization_test_omega/features/authentication/cubit/authentication_cubit.dart';
import 'package:authorization_test_omega/features/ui/pages/authorization_result_screen/authorization_result_screen.dart';
import 'package:authorization_test_omega/features/ui/pages/layout_bodys/mobile_layaut_body.dart';
import 'package:authorization_test_omega/features/ui/pages/layout_bodys/web_layout_body.dart';
import 'package:authorization_test_omega/features/ui/pages/layout_bodys/wide_layaut_body.dart';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthorizationScreen extends StatefulWidget {
  const AuthorizationScreen({super.key});

  @override
  State<AuthorizationScreen> createState() => AuthorizationScreenState();
}

class AuthorizationScreenState extends State<AuthorizationScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: AppKeys.authorizationStateKey,
      body: BlocBuilder<AuthenticationCubit, AuthenticationState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => const SizedBox(),
            initial: () {
              return LayoutBuilder(
                builder: (context, constraints) {
                  if (constraints.maxWidth < mediumResolution && !kIsWeb) {
                    return MobilelayoutBody(
                      emailController: emailController,
                      passwordController: passwordController,
                      onPressed: () => context.read<AuthenticationCubit>().authorize(
                            email: emailController.text,
                            password: passwordController.text,
                          ),
                    );
                  } else if (constraints.maxWidth > mediumResolution && !kIsWeb) {
                    return WideLayoutBody(
                      emailController: emailController,
                      passwordController: passwordController,
                      onPressed: () => context.read<AuthenticationCubit>().authorize(
                            email: emailController.text,
                            password: passwordController.text,
                          ),
                    );
                  } else if (kIsWeb) {
                    return WebLayoutBody(
                      emailController: emailController,
                      passwordController: passwordController,
                      onPressed: () => context.read<AuthenticationCubit>().authorize(
                            email: emailController.text,
                            password: passwordController.text,
                          ),
                    );
                  }
                  return MobilelayoutBody(
                    emailController: emailController,
                    passwordController: passwordController,
                    onPressed: () => context.read<AuthenticationCubit>().authorize(
                          email: emailController.text,
                          password: passwordController.text,
                        ),
                  );
                },
              );
            },
            loading: () => const CircularProgressIndicator(),
            loggedIn: (tokensModel) => AuthorizationResultScreen(tokensModel: tokensModel),
          );
        },
      ),
    );
  }
}
