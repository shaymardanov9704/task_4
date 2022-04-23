
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_4/routes/app_pages.dart';
import 'package:task_4/theme/app_colors.dart';

class Photogram extends StatefulWidget {
  const Photogram({Key? key}) : super(key: key);

  @override
  _PhotogramState createState() => _PhotogramState();
}

class _PhotogramState extends State<Photogram> {

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
    return Scaffold(

      body: ListView(
        padding:const EdgeInsets.all(16),
        children: [
          const SizedBox(height: 76),
          Text(
            'photogram',
            style: GoogleFonts.comfortaa(
                color: AppColors.black,
                fontSize: 36,
                fontWeight: FontWeight.w400),
          ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      )

    );
  }

  Widget photo(String image) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, AppRoutes.photoOpen,arguments: image);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 5,top: 5),
        width: MediaQuery
            .of(context)
            .size
            .width / 2 -20,
        child: Image.asset(
          image,
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
