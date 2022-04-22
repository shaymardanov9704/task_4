import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_4/routes/app_pages.dart';
import 'package:task_4/theme/app_colors.dart';

class RegisterNext extends StatefulWidget {
  const RegisterNext({Key? key}) : super(key: key);

  @override
  _RegisterNextState createState() => _RegisterNextState();
}

class _RegisterNextState extends State<RegisterNext> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    String email = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 62,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: const Icon(
                  CupertinoIcons.arrow_turn_up_left,
                  size: 15,
                ),
              ),
              const SizedBox(
                height: 32.65,
              ),
              Text(
                'Ro’yxatdan o’tish',
                style: GoogleFonts.comfortaa(
                    color: AppColors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.w400),
              ),
              const SizedBox(
                height: 32,
              ),
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2.0),
                    borderSide: const BorderSide(
                      width: 2,
                      color: AppColors.black,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2.0),
                    borderSide: const BorderSide(
                      width: 2,
                      color: AppColors.black,
                    ),
                  ),
                  hintText: 'Name',
                  hintStyle: GoogleFonts.roboto(
                      color: AppColors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, AppRoutes.profile,arguments: [nameController.text.toString(),email]
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 52,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
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
              ),
              const SizedBox(
                height: 32,
              ),
              RichText(
                text: TextSpan(
                  text: 'Ro’yxat o’tish tugmasini bosish orqali siz ',
                  style: GoogleFonts.roboto(
                    color: AppColors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w500),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'photogram',
                style: GoogleFonts.roboto(
                    color: AppColors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w900),
                    ),
                     TextSpan(
                        text: ' \nijtimoiy tarog’ining Foydalanish shartlari va Xavfsizlik \nqoidalariga rozilik bildirgan bo’lasiz.',
                      style: GoogleFonts.roboto(
                          color: AppColors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w500),

                     )],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
