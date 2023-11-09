import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:napets/src/domain/repositories/user_repositorie.dart';
import 'package:napets/src/presentation/modules/camera/camera_view.dart';
import 'package:napets/src/presentation/modules/consejosdecultivos/consejos_view.dart';
import 'package:napets/src/presentation/global_widgets/splash_screen.dart';
import 'package:napets/src/presentation/global_widgets/bottom_nav.dart';
import 'package:napets/src/presentation/modules/login/napets_navito/login_view.dart';
import 'package:napets/src/presentation/modules/plagasyenfermedades/plagasyenfermedades_view.dart';

class AppRoutes {
  late var router = GoRouter(routes: _routes);

  final _routes = [
    GoRoute(
      path: '/guard',
      redirect: (context, state) {
        final userRepo = RepositoryProvider.of<UserRepository>(context);
        if (userRepo.hasToken) return "/home";
        return '/login';
      },
    ),
    GoRoute(
        path: '/',
        builder: (context, state) => const Splashscreen(),
        routes: [
          GoRoute(
            path: 'login',
            builder: (context, state) => const LoginViewN(),
          )
        ]),
    GoRoute(
      name: 'home',
      path: '/home',
      builder: (context, state) => const BottonNav(),
    ),
    GoRoute(
      path: '/camera',
      name: 'camera',
      builder: (context, state) => const CameraView(),
    ),
    GoRoute(
      path: '/consejos',
      name: 'consejos',
      builder: (context, state) => const ConsejosView(),
    ),
    GoRoute(
      path: '/plagas',
      name: 'plagas',
      builder: (context, state) => const PlagasYEnfermedadesView(),
    )
  ];
}
