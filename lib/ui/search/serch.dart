import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_4/theme/app_colors.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body: ListView(
  padding: const EdgeInsets.all(16),
  children: [
    const SizedBox(
      height: 76.65,
    ),
    Text(
      'Izlash',
      style: GoogleFonts.comfortaa(
          color: AppColors.black,
          fontSize: 36,
          fontWeight: FontWeight.w400),
    ),
    const SizedBox(
      height: 32,
    ),
    TextFormField(

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
        hintText: 'Izlash',
        hintStyle: GoogleFonts.roboto(
            color: AppColors.grey,
            fontSize: 15,
            fontWeight: FontWeight.w700),
      ),
    ),
// SizedBox(height: 32,),
//     Text('Barcha natijalar',style: GoogleFonts.roboto(
//         color: AppColors.black,
//         fontSize: 13,
//         fontWeight: FontWeight.w700),),

  ],
),
    );
  }
}
