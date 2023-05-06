import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';
import 'package:netschool/resources/resources.dart';
import '../../../theme/theme.dart';

class MovieList extends StatefulWidget {
  const MovieList({super.key});

  @override
  State<MovieList> createState() => _MovieListState();
}

class _MovieListState extends State<MovieList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return Post(
            image: AssetImage(
              'assets/move.png',
            ),
            name: 'Опера',
            famName: 'Стоян',
            data: '5 days',
            postText: 'Привет кенты',
          );
        });
  }
}

class Post extends StatefulWidget {
  final ImageProvider<Object> image;
  final String name;
  final String famName;
  final String data;
  final String postText;

  Post({
    super.key,
    required this.image,
    required this.name,
    required this.famName,
    required this.data,
    required this.postText,
  });

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  late final ImageProvider<Object> _image;
  late final String _name;
  late final String _famName;
  late final String _data;
  late final String _postText;

  String str =
      'dsdsds dsdsdf fgdfg fhsdhghgfhgf hfghfgh fghfghgdfgdfgfdgdfgdgf fghgfgfdgdfgdfgdgdgdfgdfgdfgdfgdgdggfffffffff ';
  bool showButton = false;
  int likes = 0;
  int coments = 0;

  @override
  void initState() {
    super.initState();
    _image = widget.image;
    _name = widget.name;
    _famName = widget.famName;
    _data = widget.data;
    _postText = widget.postText;
  }

  @override
  Widget build(BuildContext context) {
    void onTapComent() {}
    void comentOn() {}
    void likeOn() {}
    return Container(
      width: double.infinity,
      color: colorWhite,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage(MyImages.ava),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${_name} ${_famName}',
                            style: textListName,
                          ),
                          Text(
                            'Ученик.. ${_data}',
                            style: textListData,
                          ),
                        ],
                      ),
                    ],
                  ),
                  IconButton(
                      onPressed: () => '',
                      icon: SvgPicture.asset(MyImages.touch))
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Text(
                  str,
                  style: buttonTextStylText,
                  maxLines: showButton ? null : 2,
                  overflow: showButton ? null : TextOverflow.ellipsis,
                ),
              ),
              if (showButton)
                SizedBox(
                  height: 8,
                ),
              if (!showButton)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Читать дальше',
                          style: buttonTextStyleComent,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              setState(() {
                                showButton = true;
                              });
                            },
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 350,
          color: Colors.red,
          child: Image(
            image: _image,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5, bottom: 10, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        iconSize: 14,
                        visualDensity: VisualDensity.compact,
                        padding: EdgeInsets.zero,
                        onPressed: () {
                          () => setState(() {
                                likeOn();
                              });
                        },
                        icon: SvgPicture.asset(MyImages.ew),
                      ),
                      IconButton(
                          iconSize: 14,
                          visualDensity: VisualDensity.compact,
                          padding: EdgeInsets.zero,
                          onPressed: () => setState(() {
                                comentOn();
                              }),
                          icon: SvgPicture.asset(MyImages.coment)),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      () => setState(() {
                            print('dsdsdsdsd');
                          });
                    },
                    icon: SvgPicture.asset(MyImages.rep),
                  ),
                ],
              ),
              Text(
                'Нравится: ${likes}',
                style: buttonTextStyleLike,
              ),
              SizedBox(
                height: 5,
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Смотреть все коментарии(${coments})',
                      style: buttonTextStyleComent,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          setState(() {
                            print('s');
                          });
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ]),
    );
    ;
  }
}
