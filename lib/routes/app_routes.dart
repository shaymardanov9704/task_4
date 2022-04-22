
import 'package:task_4/routes/app_pages.dart';
import 'package:task_4/ui/logged_out/logged_out.dart';
import 'package:task_4/ui/login/login.dart';
import 'package:task_4/ui/profile/profile.dart';
import 'package:task_4/ui/register/register_next.dart';
import 'package:task_4/ui/register/register_page.dart';

class AppPages{
  static final page = {
AppRoutes.logged: (context)=>const LoggedOut(),
AppRoutes.login: (context)=>const Login(),
AppRoutes.profile: (context)=>const Profile(),
AppRoutes.register: (context)=>const Register(),
AppRoutes.registerNext: (context)=>const RegisterNext(),
  };
}