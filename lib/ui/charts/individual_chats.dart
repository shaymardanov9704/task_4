
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_4/theme/app_colors.dart';

class IndividualChat extends StatefulWidget {
  const IndividualChat({Key? key}) : super(key: key);

  @override
  _IndividualChatState createState() => _IndividualChatState();
}

class _IndividualChatState extends State<IndividualChat> {

  @override
  Widget build(BuildContext context) {
    final List list = ModalRoute.of(context)?.settings.arguments as List;
    return Scaffold(
      appBar: AppBar(
        title: Text(list[0].toString()),
        centerTitle: true,

      ),
      body: ListView(
        children: [
          chat(list[1]),
          myChat(),
          chat(list[1]),
          myChat(),
          chat(list[1]),

        ],
      ),
    );
  }
  Widget chat(String image){
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(14)),
            child: Image.asset(image,width: 28,height: 28,fit: BoxFit.cover,),
          ),
          const SizedBox(width: 16,),
        Container(
          padding: const EdgeInsets.all(16),
          width: 299,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey.shade200,
          ),
          child: Text('Really love your most recent photo. I’ve been trying to capture the same thing for a few months and would love some tips!',maxLines: 10,style: GoogleFonts.roboto(color: AppColors.black,fontSize: 13,fontWeight: FontWeight.w400
          ),),
        )],
      ),
    );
  }

  Widget myChat(){
    return Container(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
const SizedBox(width: 30),
          Container(
            padding: const EdgeInsets.all(16),
            width: 299,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey.shade200,
            ),
            child: Text('Really love your most recent photo. I’ve been trying to capture the same thing for a few months and would love some tips!',maxLines: 10,style: GoogleFonts.roboto(color: AppColors.black,fontSize: 13,fontWeight: FontWeight.w400
            ),),
          ),
         const SizedBox(width: 16,),
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(14)),
            child: Image.asset('assets/images/stark.jpeg',width: 28,height: 28,fit: BoxFit.cover,),
          ),],
      ),
    );
  }
}
