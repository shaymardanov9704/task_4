import 'package:task_4/routes/app_pages.dart';
import 'package:task_4/ui/charts/chats.dart';
import 'package:task_4/ui/charts/individual_chats.dart';
import 'package:task_4/ui/logged_out/logged_out.dart';
import 'package:task_4/ui/login/login.dart';
import 'package:task_4/ui/photogram/photo_open.dart';
import 'package:task_4/ui/photogram/photogram.dart';
import 'package:task_4/ui/photogram/photogram_main_screen.dart';
import 'package:task_4/ui/profile/profile.dart';
import 'package:task_4/ui/register/register_next.dart';
import 'package:task_4/ui/register/register_page.dart';
import 'package:task_4/ui/search/search_result.dart';
import 'package:task_4/ui/search/serch.dart';

class AppPages {
  static final page = {
    AppRoutes.logged: (context) => const LoggedOut(),
    AppRoutes.login: (context) => const Login(),
    AppRoutes.profile: (context) =>  Profile(list: const [''],),
    AppRoutes.register: (context) => const Register(),
    AppRoutes.registerNext: (context) => const RegisterNext(),
    AppRoutes.photoOpen: (context) => const PhotoOpen(),
    AppRoutes.photoGram: (context) => const Photogram(),
    AppRoutes.chats: (context) =>  const Chats(list: [''],),
    AppRoutes.individualChat: (context) => const IndividualChat(),
    AppRoutes.search: (context) => const Search(),
    AppRoutes.searchResult: (context) => const SearchResult(),
    AppRoutes.photoGramMainScreen: (context) => const MainScreen(),
  };
}
