import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:netschool/resources/resources.dart';
import '../../theme/theme.dart';
import 'Profil/mainProfil.dart';
import 'movie_list_widget/movie_list_widget.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // String? _name;

  int _selectTab = 0;
  static const List<Widget> _listWidget = [
    MovieList(),
    Text('Поиск'),
    Text('Добавить историю'),
    Text('Добавить публикацию'),
    Profil(
      name: 'xxxmanerka',
    ),
  ];

  void onSelectTab(int value) {
    setState(() {
      _selectTab = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _selectTab == 0
          ? AppBar(
              toolbarHeight: 60,
              elevation: 0,
              title: Text(
                'NetSchool',
                style: textOfMainPage,
              ),
            )
          : null,
      body: _listWidget[_selectTab],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 12.0, // Размер шрифта для выбранного элемента
        unselectedFontSize: 12.0,
        selectedItemColor: colorBase, // Цвет выбранного элемента
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectTab,
        items: [
          BottomNavigationBarItem(
            icon: SizedBox(
                width: 24, height: 24, child: SvgPicture.asset(MyImages.home)),
            activeIcon: SizedBox(
                width: 24,
                height: 24,
                child: SvgPicture.asset(MyImages.home, color: colorBase)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
                width: 24,
                height: 24,
                child: SvgPicture.asset(MyImages.search)),
            activeIcon: SizedBox(
                width: 24,
                height: 24,
                child: SvgPicture.asset(MyImages.search, color: colorBase)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
                width: 24,
                height: 24,
                child: SvgPicture.asset(MyImages.addHistory)),
            activeIcon: SizedBox(
                width: 24,
                height: 24,
                child: SvgPicture.asset(MyImages.addHistory, color: colorBase)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
                width: 24,
                height: 24,
                child: SvgPicture.asset(MyImages.addPhoto)),
            activeIcon: SizedBox(
                width: 24,
                height: 24,
                child: SvgPicture.asset(MyImages.addPhoto, color: colorBase)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
                width: 24, height: 24, child: SvgPicture.asset(MyImages.user)),
            activeIcon: SizedBox(
                width: 24,
                height: 24,
                child: SvgPicture.asset(MyImages.user, color: colorBase)),
            label: '',
          ),
        ],
        onTap: onSelectTab,
      ),
    );
  }
}
