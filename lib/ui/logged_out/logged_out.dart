import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_4/routes/app_pages.dart';
import 'package:task_4/theme/app_colors.dart';

class LoggedOut extends StatefulWidget {
  const LoggedOut({Key? key}) : super(key: key);

  @override
  _LoggedOutState createState() => _LoggedOutState();
}

class _LoggedOutState extends State<LoggedOut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 299,
            ),
            Text(
              'photogram',
              style: GoogleFonts.comfortaa(
                  color: AppColors.black,
                  fontSize: 48,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 290,
            ),
            Row(
              children: [
                Image.asset(
                  'assets/images/quantic.png',
                  height: 50,
                  width: 50,
                ),
                const SizedBox(
                  width: 6,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Quantic Jamoasi',
                      style: GoogleFonts.comfortaa(
                          color: AppColors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Photogram beta 1.0',
                      style: GoogleFonts.montserrat(
                          color: AppColors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, AppRoutes.login);
                  },
                  child: Container(
                    width: 167,
                    height: 52,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 2, color: AppColors.black)),
                    child: Center(
                      child: Text(
                        'Kirish',
                        style: GoogleFonts.roboto(
                            color: AppColors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, AppRoutes.register);
                  },
                  child: Container(
                    width: 167,
                    height: 52,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(width: 2, color: AppColors.black),
                        color: AppColors.black),
                    child: Center(
                      child: Text(
                        'Ro’yxatdan o’tish',
                        style: GoogleFonts.roboto(
                            color: AppColors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }
}
