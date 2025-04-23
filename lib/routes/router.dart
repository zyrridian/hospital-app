import 'package:auto_route/auto_route.dart';
import 'package:smkdev_hospital/routes/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: BookingRoute.page),
    AutoRoute(page: LayananRoute.page),
    AutoRoute(page: MainRoute.page),
    AutoRoute(page: PartnerCareerRoute.page),
    AutoRoute(page: ProfileRoute.page),
  ];
}
