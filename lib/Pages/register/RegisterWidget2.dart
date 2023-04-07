import 'package:flutter/material.dart';
import 'package:netschool/theme/theme.dart';
import 'package:flutter/services.dart';

class RegisterWidget2 extends StatefulWidget {
  const RegisterWidget2({super.key});

  @override
  State<RegisterWidget2> createState() => _RegisterWidget2State();
}

class _RegisterWidget2State extends State<RegisterWidget2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: ListView(children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: TextButton(
                  onPressed: () => Navigator.of(context).pushNamed('/register'),
                  child: Text(
                    'Назад',
                    style: buttonTextStyle,
                  ),
                  style: buttonText,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 200,
          ),
          // Image(
          //   image: AssetImage('assets/5.png'),
          // ),
          Padding(
            padding: const EdgeInsets.only(
              top: 32.2,
              left: 30,
              right: 30,
            ),
            child: Container(
              color: Colors.white,
              child: Column(children: [
                _FormWidget(),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}

class _FormWidget extends StatefulWidget {
  @override
  State<_FormWidget> createState() => __FormWidgetState();
}

final _numberTextController = TextEditingController();
final _repPaswordTextController = TextEditingController();
final _paswordTextController = TextEditingController();
String? errorText = null;
String? errorText2 = null;
bool f = false;
void auth() {
  final number = _numberTextController.text;
  final password = _paswordTextController.text;
  final repPassword = _repPaswordTextController.text;

  if ((number.length > 0) & (password.length > 0)) {
    errorText = null;
    if (password == repPassword) {
      errorText2 = null;
      f = true;
    } else {
      errorText2 = 'Пароли не совпадают.';
      f = false;
    }
  } else {
    f = false;
    errorText = 'Заполните все поля ввода.';
  }
}

class __FormWidgetState extends State<_FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
          ],
          maxLength: 9,
          decoration: InputDecoration(
            counter: Text(''),
            hintText: 'Номер телефона',
            hintStyle: textInputStyle,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  color: Color.fromRGBO(169, 61, 255, 1), width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  color: Color.fromRGBO(169, 61, 255, 1), width: 3.0),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            fillColor: Colors.white,
            isCollapsed: true,
          ),
          obscureText: false,
          controller: _numberTextController,
          // obscureText: true,
        ),
        SizedBox(
          height: 0,
        ),
        TextField(
          maxLength: 12,
          decoration: InputDecoration(
            counter: Text(''),
            hintText: 'Ввести пароль',
            hintStyle: textInputStyle,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  color: Color.fromRGBO(169, 61, 255, 1), width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  color: Color.fromRGBO(169, 61, 255, 1), width: 3.0),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            fillColor: Colors.white,
            isCollapsed: true,
          ),
          obscureText: true,
          controller: _paswordTextController,
          // obscureText: true,
        ),
        TextField(
          maxLength: 12,
          decoration: InputDecoration(
            counter: Text(''),
            hintText: 'Повторить пароль',
            hintStyle: textInputStyle,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  color: Color.fromRGBO(169, 61, 255, 1), width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  color: Color.fromRGBO(169, 61, 255, 1), width: 3.0),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            fillColor: Colors.white,
            isCollapsed: true,
          ),
          obscureText: true,
          controller: _repPaswordTextController,
          // obscureText: true,
        ),
        TextField(
          maxLength: 12,
          decoration: InputDecoration(
            counter: Text(''),
            hintText: 'Тут будет школа',
            hintStyle: textInputStyle,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  color: Color.fromRGBO(169, 61, 255, 1), width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(
                  color: Color.fromRGBO(169, 61, 255, 1), width: 3.0),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            fillColor: Colors.white,
            isCollapsed: true,
          ),
          obscureText: true,
          // controller: _paswordTextController,
          // obscureText: true,
        ),
        if (errorText != null) ...[
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Заполните все поля ввода.',
              style: errorTextStyle,
            ),
          ),
        ],
        if (errorText2 != null) ...[
          SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              'Пароли не совпадают.',
              style: errorTextStyle,
            ),
          ),
        ],
        Padding(
          padding: const EdgeInsets.only(left: 40, right: 40, top: 140),
          child: ElevatedButton(
            onPressed: () => setState(() {
              auth();
              if ((errorText2 == null) & (errorText2 == null) & (f)) {
                Navigator.of(context).pushNamed('/login');
              }
              ;
            }),
            onLongPress: () => print('longPress1'),
            child: Text(
              'Зарегестрироваться',
              style: textButton,
            ),
            style: styleButton,
          ),
        ),
      ],
    );
  }
}
