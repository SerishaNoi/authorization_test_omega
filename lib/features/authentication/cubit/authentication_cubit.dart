import 'package:authorization_test_omega/core/api/authorization_api.dart';
import 'package:authorization_test_omega/core/constants/app_keys.dart';
import 'package:authorization_test_omega/core/methods/show_dialog.dart';
import 'package:authorization_test_omega/core/models/tokens_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_state.dart';
part 'authentication_cubit.freezed.dart';

class AuthenticationCubit extends Cubit<AuthenticationState> {
  AuthenticationCubit() : super(const AuthenticationState.initial());

  final authorizationApi = AuthorizationApi();

  void authorize({required String email, required String password}) async {
    final TokensModel getTokensResult;

    if (email.isNotEmpty && password.isNotEmpty) {
      getTokensResult = await authorizationApi.getTokens(email: email, password: password);
      emit(const AuthenticationState.loading());

      if (getTokensResult.accessToken.isNotEmpty) {
        emit(AuthenticationState.loggedIn(getTokensResult));
      } else if (getTokensResult.accessToken.isEmpty) {
        showErrorDialog(
            message: 'Ошибка авторизации, попробуйте снова', key: AppKeys.authorizationStateKey);
        emit(const AuthenticationState.error('AUTHORIZATION ERROR'));
      }
    } else if (password.isEmpty && email.isEmpty) {
      showErrorDialog(message: 'Введите логин и пароль', key: AppKeys.authorizationStateKey);
    } else if (password.isEmpty) {
      showErrorDialog(message: 'Введите пароль', key: AppKeys.authorizationStateKey);
    } else if (email.isEmpty) {
      showErrorDialog(message: 'Введите логин', key: AppKeys.authorizationStateKey);
    }
  }

  void navigateBack() {
    emit(const AuthenticationState.initial());
  }
}
