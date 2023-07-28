import 'package:authorization_test_omega/features/authentication/cubit/authentication_cubit.dart';
import 'package:authorization_test_omega/features/ui/pages/authorization_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: BlocProvider<AuthenticationCubit>(
        create: (context) => AuthenticationCubit(),
        child: const AuthorizationScreen(),
      ),
    );
  }
}
