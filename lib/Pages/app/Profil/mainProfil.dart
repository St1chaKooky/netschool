import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:netschool/theme/theme.dart';
import '../../../resources/resources.dart';
import 'dart:io';

class Profil extends StatefulWidget {
  final String name;
  static final GlobalKey<_ProfilState> _key = GlobalKey<_ProfilState>();
  const Profil({super.key, required this.name});
  static String? getName() {
    return _key.currentState?._name;
  }

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  File? _image;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.gallery);

    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  void redact() {
    print('helllooo');
  }

  late String _name;
  @override
  void initState() {
    super.initState();
    _name = widget.name;
  }

  List<Widget> containers = List.generate(
      10,
      (_) => Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Container(
                width: 120,
                height: 200,
                decoration: BoxDecoration(
                  color: colorGreyText,
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ],
          ));

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Container(
                child: Column(children: [
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              iconSize: 32,
                              visualDensity: VisualDensity.compact,
                              padding: EdgeInsets.zero,
                              onPressed: () => setState(() {
                                    redact();
                                  }),
                              icon: SvgPicture.asset(MyImages.pencil)),
                          Text('Изм...')
                        ],
                      ),
                      IconButton(
                          iconSize: 16,
                          visualDensity: VisualDensity.compact,
                          padding: EdgeInsets.zero,
                          onPressed: () => setState(() {
                                redact();
                              }),
                          icon: SvgPicture.asset(MyImages.menu)),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  CircleAvatar(
                    radius: 48,
                    backgroundImage: AssetImage(MyImages.ava),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    '@${_name}',
                    style: buttonTextStylText,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45),
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Text('98', style: buttonTextStyleComent),
                              Text('друзей', style: buttonTextStyleComent),
                            ],
                          ),
                          Container(
                            width: 1,
                            height: 20,
                            color: colorGreyText,
                          ),
                          Column(
                            children: [
                              Text('2000', style: buttonTextStyleComent),
                              Text('Подписчиков', style: buttonTextStyleComent),
                            ],
                          ),
                          Container(
                            width: 1,
                            height: 20,
                            color: colorGreyText,
                          ),
                          Column(
                            children: [
                              Text('12', style: buttonTextStyleComent),
                              Text('школа', style: buttonTextStyleComent),
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ]),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: containers,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: ElevatedButton(
                onPressed: _pickImage,
                child: Text('Добавить публикацию', style: buttonTextForGray),
                style: styleButton3,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Container(
                width: 300,
                height: 1,
                color: colorGreyText,
              ),
            ),
            Column(
              children: [
                _image != null
                    ? Image.file(
                        _image!,
                        height: 200,
                      )
                    : Text(
                        'Изображение не выбрано',
                        style: TextStyle(fontSize: 10),
                      ),
              ],
            )
          ],
        ));
  }
}
