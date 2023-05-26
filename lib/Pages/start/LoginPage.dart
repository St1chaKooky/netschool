import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:flutter_svg/svg.dart';
import 'package:netschool/theme/theme.dart';
// import '../../resources/resources.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(169, 61, 255, 1),
      body: Container(
        child: _Page(),
      ),
    );
  }
}

class _Page extends StatefulWidget {
  @override
  State<_Page> createState() => _PageState();
}

class _PageState extends State<_Page> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListView(
        children: [
          _UpWidget(),
          _DownWidget(),
        ],
      ),
    );
  }
}

class _DownWidget extends StatefulWidget {
  @override
  State<_DownWidget> createState() => _DownWidgetState();
}

class _DownWidgetState extends State<_DownWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32.2,
        left: 30,
        right: 30,
      ),
      child: Container(
        color: Colors.white,
        child: Column(children: [FormWidget()]),
      ),
    );
  }
}

class _Fotter extends StatefulWidget {
  @override
  State<_Fotter> createState() => _FotterState();
}

class _FotterState extends State<_Fotter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: 'Нет аккаунта?',
              style: textInputStyle,
            ),
            TextSpan(
              text: 'Зарегистрируйся',
              style: inTextButton,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.of(context).pushNamed('/register');
                  // Navigator.of(context).restorablePushReplacementNamed('/main_screen');
                },
            ),
          ],
        ),
      ),
    );
  }
}

class FormWidget extends StatefulWidget {
  const FormWidget({super.key});

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

final _loginTextController = TextEditingController();
final _paswordTextController = TextEditingController();
String? _errorText = null;
bool f = false;
void auth() {
  final login = _loginTextController.text;
  final password = _paswordTextController.text;
  if ((login == '0') & (password == '123')) {
    _errorText = null;
    f = true;
  } else {
    f = false;
    _errorText = 'Не верный логин или пароль';
  }
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 1,
        ),
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
              borderSide: BorderSide(color: colorBlack, width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: colorBlack, width: 3.0),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            fillColor: Colors.white,
            isCollapsed: true,
          ),
          obscureText: false,
          controller: _loginTextController,
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
              borderSide: BorderSide(color: colorBlack, width: 2.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              borderSide: BorderSide(color: colorBlack, width: 3.0),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            fillColor: Colors.white,
            isCollapsed: true,
          ),
          obscureText: true,
          controller: _paswordTextController,
          // obscureText: true,
        ),
        ElevatedButton(
          onPressed: () => setState(() {
            auth();
            if (f) {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/main',
                (route) => false,
              );
            }
          }),
          onLongPress: () => print('longPress1'),
          child: Text(
            'Войти',
            style: textButton,
          ),
          style: styleButton4,
        ),
        MyButtonText(text: 'Забыли пароль?'),
        Stack(children: [
          if (_errorText != null) ...[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Не верный логин или пароль',
                  style: errorTextStyle,
                ),
              ],
            ),
          ],
          SizedBox(
            height: 160,
            width: 300,
          ),
          Positioned.fill(
            top: 140,
            child: Align(
              alignment: Alignment.topCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Нет аккаунта?',
                          style: textInputStyle,
                        ),
                        TextSpan(
                          text: 'Зарегистрируйся',
                          style: inTextButton,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context).pushNamed('/register');
                              // Navigator.of(context).restorablePushReplacementNamed('/main_screen');
                            },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ],
    );
  }
}

//ignore: must_be_immutable
class MyButtonText extends StatefulWidget {
  late String text;
  MyButtonText({Key? key, required this.text}) : super(key: key);

  @override
  State<MyButtonText> createState() => _MyButtonTextState();
}

class _MyButtonTextState extends State<MyButtonText> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => print('3'),
      onLongPress: () => print('longPress3'),
      child: Text(
        widget.text,
        style: buttonTextStyle2,
      ),
      style: buttonText,
    );
  }
}

class _UpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color.fromRGBO(255, 255, 255, 1),
        width: double.infinity,
        height: 334.3, //40%
        child: Center(
            child: Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Text(
            'Log in',
            style: textLogIn,
          ),
        )));
  }
}




// class MyInput2 extends StatefulWidget {
//   late int length;
//   late bool obscure;
//   late String text;

//   MyInput2({
//     required this.length,
//     required this.obscure,
//     required this.text,
//     super.key,
//   });

//   @override
//   State<MyInput2> createState() => _MyInput2State();
// }

// class _MyInput2State extends State<MyInput2> {
//   @override
//   Widget build(BuildContext context) {
//     final decorationInput = InputDecoration(
//       hintText: widget.text,
//       hintStyle: textInputStyle,
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(10)),
//         borderSide:
//             BorderSide(color: Color.fromRGBO(169, 61, 255, 1), width: 2.0),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.all(Radius.circular(10)),
//         borderSide:
//             BorderSide(color: Color.fromRGBO(169, 61, 255, 1), width: 3.0),
//       ),
//       contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//       fillColor: Colors.white,
//       isCollapsed: true,
//     );

//     return TextField(
//       maxLength: widget.length,
//       decoration: decorationInput,
//       obscureText: widget.obscure,
//       controller: paswordTextController,
//       // obscureText: true,
//     );
//   }
// }

