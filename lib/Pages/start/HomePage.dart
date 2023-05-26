import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:netschool/Pages/start/LoginPage.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> _delayedTransition() async {
    await Future.delayed(Duration(seconds: 2)); // задержка в 3 секунды
    Navigator.of(context).pushReplacementNamed('/login');
  }

  @override
  void initState() {
    super.initState();
    _delayedTransition(); // запускаем функцию с задержкой при создании экрана
  }

  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(169, 61, 255, 1),
        body: Center(
          child: _MainText(),
        ),
      ),
    );
  }
}

class _MainText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Net',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w900,
              ),
            )),
        Text('School',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                color: Colors.white,
                height: 0.9,
                fontSize: 40.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w900,
              ),
            )),
      ],
    );
  }
}
