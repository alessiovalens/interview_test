import 'package:go_router/go_router.dart';
import 'package:interview_test/auth_notifier.dart';
import 'package:interview_test/modules/login/login_page.dart';
import 'package:interview_test/modules/vulnerable_species/detail/vulnerable_species_detail_page.dart';
import 'package:interview_test/modules/vulnerable_species/list/vulnerable_species_page.dart';

final router = GoRouter(
  initialLocation: VulnerableSpeciesPage.routeName,
  refreshListenable: AuthNotifier.instance,
  redirect: (context, state) {
    final isLogged = AuthNotifier.instance.isLogged;
    if (state.matchedLocation == LoginPage.routeName && isLogged) {
      return VulnerableSpeciesPage.routeName;
    }
    if (!isLogged) {
      return LoginPage.routeName;
    }
    return null;
  },
  routes: [
    GoRoute(
      path: LoginPage.routeName,
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: VulnerableSpeciesPage.routeName,
      builder: (context, state) => const VulnerableSpeciesPage(),
      routes: [
        GoRoute(
          path: ':id',
          redirect: (context, state) {
            final id = int.tryParse(state.pathParameters['id'] ?? '');
            return id == null ? VulnerableSpeciesPage.routeName : null;
          },
          builder: (context, state) => VulnerableSpeciesDetailPage(
            id: int.parse(state.pathParameters['id']!),
          ),
        ),
      ],
    ),
  ],
);
