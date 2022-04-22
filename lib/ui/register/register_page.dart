import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_4/routes/app_pages.dart';
import 'package:task_4/theme/app_colors.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: const Icon(
                  CupertinoIcons.arrow_turn_up_left,
                  size: 13,
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
                controller: emailController,
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
                  hintText: 'Email',
                  hintStyle: GoogleFonts.roboto(
                      color: AppColors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                  border: InputBorder.none,
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
                  hintText: 'Password',
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
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.registerNext,arguments:
                    emailController.text.toString(),
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
                      'KEYINGISI',
                      style: GoogleFonts.roboto(
                          color: AppColors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              GestureDetector(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(2),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 52,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: AppColors.white),
                      child: Center(
                        child: Text(
                          'Google bilan ro’yxatdan o’tish',
                          style: GoogleFonts.roboto(
                              color: AppColors.blue,
                              fontSize: 13,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        AppColors.blue,
                        AppColors.green,
                        AppColors.yellow,
                        AppColors.red,
                        AppColors.blue
                      ]),
                      borderRadius: BorderRadius.circular(6),
                      color: AppColors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
