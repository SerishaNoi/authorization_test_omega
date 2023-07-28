import 'package:authorization_test_omega/core/models/tokens_model.dart';
import 'package:authorization_test_omega/core/styles/app_colors.dart';
import 'package:authorization_test_omega/features/authentication/cubit/authentication_cubit.dart';
import 'package:authorization_test_omega/features/ui/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthorizationResultScreen extends StatelessWidget {
  final TokensModel tokensModel;

  const AuthorizationResultScreen({super.key, required this.tokensModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Text("Токен доступа: ${tokensModel.accessToken}"),
            Text("Рефреш токен: ${tokensModel.refreshToken}"),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: MainButton(
                title: 'Вернуться к экрану авторизации',
                titleSize: 16,
                titleColor: AppColors.white,
                onPressed: () {
                  context.read<AuthenticationCubit>().navigateBack();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
