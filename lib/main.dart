import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:napets/src/config/navigation/routes.dart';
import 'package:napets/src/domain/blocs/user_bloc/user_bloc.dart';
import 'package:napets/src/domain/repositories/user_repositorie.dart';
import 'package:napets/src/services/secure_storage_service.dart';
import 'package:napets/src/services/user_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      lazy: false,
      create: (context) => UserRepository(Apirest(), SecureService()),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) {
              final userRepo = RepositoryProvider.of<UserRepository>(context);
              return UserBloc(userRepo);
            },
          )
        ],
        child: MaterialApp.router(
          title: 'Material App',
          debugShowCheckedModeBanner: false,
          routerConfig: AppRoutes().router,
        ),
      ),
    );
  }
}
