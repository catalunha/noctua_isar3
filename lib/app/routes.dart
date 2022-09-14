import 'package:get/get.dart';
import 'package:noctua_isar/app/view/controllers/people/people_dependencies.dart';
import 'package:noctua_isar/app/view/controllers/splash/splash_dependencies.dart';
import 'package:noctua_isar/app/view/pages/people/people_page.dart';
import 'package:noctua_isar/app/view/pages/people/search_page.dart';
import 'package:noctua_isar/app/view/pages/splash_page.dart';

class Routes {
  static const splash = '/';
  static const people = '/people';
  static const peopleSearch = '/people/search';
  static final pageList = [
    GetPage(
      name: Routes.splash,
      binding: SplashDependencies(),
      page: () => const SplashPage(),
    ),
    GetPage(
      name: Routes.peopleSearch,
      binding: PeopleDependencies(),
      page: () => SearchPage(),
    ),
    GetPage(
      name: Routes.people,
      binding: PeopleDependencies(),
      page: () => PeoplePage(),
    ),
  ];
}
