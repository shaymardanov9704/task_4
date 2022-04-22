import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_4/theme/app_colors.dart';

class Profile extends StatelessWidget {

  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List list = ModalRoute.of(context)?.settings.arguments as List;
    return Scaffold(
        body: Container(
          padding:const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(height: 76),
              Center(
                child: ClipRRect(
                  borderRadius:const BorderRadius.all(Radius.circular(64)),
                  child: Image.asset('assets/images/stark.jpeg',fit: BoxFit.cover,height: 128,width: 128),
                ),
              ),
              const SizedBox(height: 16),
              Text(list[0],style: GoogleFonts.comfortaa(
                  color: AppColors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.w400),),
              const SizedBox(height: 5),
             Visibility(visible: list[1]!='',child:  Text(list[1],style: GoogleFonts.comfortaa(
                 color: AppColors.black,
                 fontSize: 20,
                 fontWeight: FontWeight.w400),),),
              const SizedBox(height: 16),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 52,
                decoration: BoxDecoration(
                  border: Border.all(width: 2,color: AppColors.black),
                  borderRadius: BorderRadius.circular(6),
                  color: AppColors.white,),
                child: Center(
                  child: Text(
                    'XABAR',
                    style: GoogleFonts.roboto(
                        color: AppColors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w900),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }
}

