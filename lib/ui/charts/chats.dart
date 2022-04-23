import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_4/routes/app_pages.dart';
import 'package:task_4/theme/app_colors.dart';

class Chats extends StatefulWidget {
  final List? list;

  const Chats({Key? key, required this.list}) : super(key: key);

  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  List names = ['Anna', 'Christina', 'leo', 'Brian'];
  List images = [
    'assets/images/img.png',
    'assets/images/img_1.png',
    'assets/images/img_2.png',
    'assets/images/stark.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    final List? list = widget.list;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 1,
        title: Text(
          'Suxbatlar',
          style: GoogleFonts.montserrat(
              color: AppColors.black,
              fontSize: 13,
              fontWeight: FontWeight.w700),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              CupertinoIcons.search,
              color: AppColors.black,
            ),
          )
        ],
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) =>
            chats(list!, names[index], images[index]),
        separatorBuilder: (BuildContext context, int index) => Container(
          height: 1,
          width: MediaQuery.of(context).size.width,
          color: AppColors.grey,
        ),
        itemCount: names.length,
      ),
    );
  }

  Widget chats(List list, String name, String image) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, AppRoutes.individualChat,
            arguments: [name, image]);
      },
      child: Container(
        padding: const EdgeInsets.all(16),
        width: MediaQuery.of(context).size.width,
        height: 100,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(32)),
              child: Image.asset(
                image,
                height: 64,
                width: 64,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                      color: AppColors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  'Thank you! That was very helpful!',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.roboto(
                      color: AppColors.grey3,
                      fontSize: 13,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
