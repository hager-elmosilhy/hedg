import 'package:go_router/go_router.dart';
import 'package:hedg/feature/authentication/view/login.dart';
import 'package:hedg/feature/onboarding/view/onboarding.dart';

abstract class AppRoutes {
  static final router = GoRouter(
    routes: [ 
      
        GoRoute(
        path: '/',
        builder: (context, state) => const OnboardingScreen(),
      ),

       GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
       ],
  );
}