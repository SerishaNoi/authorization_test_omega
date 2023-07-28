import 'dart:convert';

import 'package:authorization_test_omega/core/models/tokens_model.dart';
import 'package:http/http.dart' as http;

const String url = 'http://158.160.14.209/api/v1/auth/login';

class AuthorizationApi {
  Future<TokensModel> getTokens({required String email, required String password}) async {
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {"content-type": "application/json"},
        body: json.encode({
          "login": email,
          "password": password,
        }),
      );

      final TokensModel tokensModel = TokensModel.fromJson(json.decode(response.body));
      print(tokensModel.accessToken);
      print(tokensModel.refreshToken);
      return tokensModel;
    } catch (e) {
      throw Exception(e);
    }
  }
  // Future<TokensModel> getTokens({required String email, required String password}) async {
  //   try {
  //     final response = await http.post(
  //       Uri.parse(url),
  //       headers: {"content-type": "application/json"},
  //       body: json.encode({
  //         "login": email,
  //         "password": password,
  //       }),
  //     );

  //     final TokensModel tokensModel = TokensModel.fromJson(json.decode(response.body));
  //     print(tokensModel.accessToken);
  //     print(tokensModel.refreshToken);
  //     return tokensModel;
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  // }
}
