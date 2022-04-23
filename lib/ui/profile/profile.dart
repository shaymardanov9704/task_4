import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_4/routes/app_pages.dart';
import 'package:task_4/theme/app_colors.dart';

class Profile extends StatefulWidget {

  List? list;
   Profile({Key? key,required this.list}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<String> photos = [
    'assets/images/img.png',
    'assets/images/img_1.png',
    'assets/images/quantic.png',
    'assets/images/quantic.png',
    'assets/images/stark.jpeg',
    'assets/images/quantic.png',
    'assets/images/quantic.png',
    'assets/images/stark.jpeg',
    'assets/images/quantic.png',
    'assets/images/quantic.png',
    'assets/images/stark.jpeg',
    'assets/images/quantic.png',
  ];

  @override
  Widget build(BuildContext context) {
   List? list = widget.list;
    return Scaffold(
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(height: 76),
                  Center(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(64)),
                      child: Image.asset('assets/images/stark.jpeg',
                          fit: BoxFit.cover, height: 128, width: 128),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    list![0],
                    style: GoogleFonts.comfortaa(
                        color: AppColors.black,
                        fontSize: 36,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(height: 5),
                  Visibility(
                    visible: list[1] != '',
                    child: Text(
                      list[1],
                      style: GoogleFonts.comfortaa(
                          color: AppColors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 52,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: AppColors.black),
                      borderRadius: BorderRadius.circular(6),
                      color: AppColors.white,
                    ),
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

                ]),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    photo(photos[1]),
                    photo(photos[0]),
                    photo(photos[1]),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    photo(photos[0]),
                    photo(photos[1]),
                    photo(photos[0]),
                  ],
                ),
              ],
            )
          ],
        ));
  }

  Widget photo(String image) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, AppRoutes.photoOpen,arguments: image);
      },
      child: Container(

        margin: const EdgeInsets.only(bottom: 5,top: 5,right: 2,left: 2),
        width: MediaQuery
            .of(context)
            .size
            .width / 2 - 20,
        child: Image.asset(
          image,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}

