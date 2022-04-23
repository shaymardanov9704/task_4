import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task_4/theme/app_colors.dart';
import 'package:task_4/ui/charts/chats.dart';
import 'package:task_4/ui/photogram/photogram.dart';
import 'package:task_4/ui/profile/profile.dart';
import 'package:task_4/ui/search/serch.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  final PageController _pageController = PageController();


  @override
  Widget build(BuildContext context) {

    List list = ModalRoute.of(context)?.settings.arguments as List;
    list[0]=list[0]==''?'Eldor':list[0];
    return Scaffold(
        body: PageView(
          controller: _pageController,
          physics:const NeverScrollableScrollPhysics(),
          children:  [
            const Photogram(),
            const Search(),
            Chats(list: list),
            Profile(list: list,),
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 83,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  _pageController.animateToPage(0, duration: const Duration(milliseconds: 1),curve: Curves.easeIn);
                },
                icon:const Icon(
                  CupertinoIcons.home,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  _pageController.animateToPage(1, duration: const Duration(milliseconds: 1),curve: Curves.easeIn);
                },
                icon:const Icon(
                  CupertinoIcons.search,
                  size: 30,
                ),
              ),
              Container(
                width: 70,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: const LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color.fromRGBO(255, 77, 0, 1),
                          Color.fromRGBO(255, 0, 214, 1),
                        ])),
                child: const Center(
                  child: Icon(
                    CupertinoIcons.add,
                    color: AppColors.white,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  _pageController.animateToPage(2, duration: const Duration(milliseconds: 1),curve: Curves.easeIn);
                },
                icon:const Icon(
                  CupertinoIcons.chat_bubble,
                  size: 30,
                ),
              ),
              IconButton(
                onPressed: () {
                  _pageController.animateToPage(3, duration: const Duration(milliseconds: 1),curve: Curves.easeIn);
                },
                icon:const Icon(
                  CupertinoIcons.person,
                  size: 30,
                ),
              ),
            ],
          ),
        ));
  }
}
