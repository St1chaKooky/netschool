import 'package:flutter/material.dart';
import 'package:netschool/theme/theme.dart';

class RegisterWidget extends StatefulWidget {
  RegisterWidget({super.key});

  @override
  State<RegisterWidget> createState() => _RegisterWidgetState();
}

bool isButton1Selected = false;
bool isButton2Selected = false;
String? errorText = null;
void proverka() {
  if ((isButton1Selected) == (isButton2Selected)) {
    errorText = 'Кто вы? Ученик или учитель.';
  } else {
    errorText = null;
  }
}

final _nameTextController = TextEditingController();
final _famTextController = TextEditingController();
final _otTextController = TextEditingController();

String? _errorText2 = null;
bool f = false;
void proverka2() {
  final name = _nameTextController.text;
  final fam = _famTextController.text;
  final ot = _otTextController.text;

  if ((name.length > 0) & (fam.length > 0) & (ot.length > 0)) {
    _errorText2 = null;
    f = true;
  } else {
    f = false;
    _errorText2 = 'заполните все поля ввода';
  }
}

class _RegisterWidgetState extends State<RegisterWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        child: ListView(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 10),
                  child: Row(
                    children: [
                      TextButton(
                        onPressed: () =>
                            Navigator.of(context).pushNamed('/login'),
                        child: Text(
                          'Назад',
                          style: buttonTextStyle,
                        ),
                        style: buttonText,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 110),
                child: Text(
                  'Кто ты?',
                  style: textDecorationExtraBoldPurple,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 32.2,
                left: 30,
                right: 30,
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Имя',
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
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      fillColor: Colors.white,
                      isCollapsed: true,
                    ),
                    obscureText: false,

                    controller: _nameTextController,
                    // obscureText: true,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Фамилия',
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
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      fillColor: Colors.white,
                      isCollapsed: true,
                    ),
                    obscureText: false,
                    controller: _famTextController,
                    // obscureText: true,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Отчество',
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
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      fillColor: Colors.white,
                      isCollapsed: true,
                    ),
                    obscureText: false,
                    controller: _otTextController,
                    // obscureText: true,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Container(
                height: 1,
                width: 340,
                color: Color.fromRGBO(169, 61, 255, 1),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            MyButtons(),
            SizedBox(
              height: 20,
            ),
            if (errorText != null) ...[
              Center(
                child: Text(
                  'Кто вы? Учитель или ученик.',
                  style: errorTextStyle,
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
            if (_errorText2 != null) ...[
              Center(
                child: Text(
                  'Заполните все поля ввода.',
                  style: errorTextStyle,
                ),
              ),
            ],
            SizedBox(
              height: 80,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () => {
                  if (((isButton1Selected) != (isButton2Selected)) & f)
                    {Navigator.of(context).pushNamed('/register2')},
                  setState(() {
                    proverka();
                    proverka2();
                  }),
                },
                onLongPress: () => print('longPress1'),
                child: Text(
                  'Продолжить',
                  style: textButton,
                ),
                style: styleButton,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyButtons extends StatefulWidget {
  const MyButtons({
    super.key,
  });

  @override
  State<MyButtons> createState() => MyButtonsState();
}

class MyButtonsState extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () => {
              setState(() {
                isButton1Selected = true;
                isButton2Selected = false;
              }),
            },
            child: Text(
              'Учитель',
              style: isButton1Selected ? textButton : textButton2,
            ),
            style: isButton1Selected ? styleButton : styleButton2,
          ),
          SizedBox(width: 14),
          ElevatedButton(
            onPressed: () => {
              setState(() {
                isButton1Selected = false;
                isButton2Selected = true;
              }),
            },
            child: Text(
              'Ученик',
              style: isButton2Selected ? textButton : textButton2,
            ),
            style: isButton2Selected ? styleButton : styleButton2,
          ),
        ],
      )),
    );
  }
}
