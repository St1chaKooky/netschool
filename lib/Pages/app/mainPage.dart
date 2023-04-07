import 'package:flutter/material.dart';
import 'package:netschool/resources/resources.dart';
import '../../theme/theme.dart';
import 'movie_list_widget/movie_list_widget.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectTab = 0;
  static const List<Widget> _listWidget = [
    MovieList(),
    Text('Поиск'),
    Text('Добавить историю'),
    Text('Добавить публикацию'),
    Text('Профиль'),
  ];

  void onSelectTab(int value) {
    setState(() {
      _selectTab = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorLineBlack,
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text(
          'NetSchool',
          style: textOfMainPage,
        ),
      ),
      body: Center(
        child: _listWidget[_selectTab],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 24.0, // Размер шрифта для выбранного элемента
        unselectedFontSize: 24.0,
        selectedItemColor: colorGrey, // Цвет выбранного элемента
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectTab,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(MyImages.home)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(MyImages.search)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(MyImages.addHistory)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(MyImages.addPhoto)),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage(MyImages.user)),
            label: '',
          ),
        ],
        onTap: onSelectTab,
      ),
    );
  }
}
