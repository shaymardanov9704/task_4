
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_4/theme/app_colors.dart';

class PhotoOpen extends StatelessWidget {
  const PhotoOpen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String image = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image), fit: BoxFit.fitHeight)),
        child: Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  AppColors.black,
                  AppColors.transparent,
                  AppColors.transparent,
                  AppColors.transparent,
                  AppColors.transparent,
                  AppColors.transparent,
                  AppColors.transparent,
                ])),
            child: Column(
              children: [
                const SizedBox(
                  height: 56,
                ),
                Row(
                  children: [
                    const SizedBox(width: 16),
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(28)),
                      child: Image.asset(
                        image,
                        height: 28,
                        width: 28,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: [
                        Text(
                          'Angelo Pantazis',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.roboto(
                              color: AppColors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          '@angelopantazis',
                          textAlign: TextAlign.left,
                          style: GoogleFonts.roboto(
                              color: AppColors.grey,
                              fontSize: 11,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    const SizedBox(width: 213,),
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: const Icon(CupertinoIcons.clear,color: AppColors.white,size: 15,))
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
