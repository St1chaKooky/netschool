import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Цвета
final colorError = Color.fromRGBO(196, 40, 40, 1);
final colorWhite = Color.fromRGBO(255, 255, 255, 1);
final colorBase = Color.fromRGBO(169, 61, 255, 1);
final colorGreyText = Color.fromRGBO(129, 129, 129, 1);
final colorOverlayPurple = Color.fromRGBO(204, 142, 255, 1);
final colorOverlayGrey = Color.fromRGBO(224, 214, 231, 1);
final colorBlack = Color.fromARGB(255, 0, 0, 0);
final colorLineBlack = Color.fromRGBO(203, 203, 203, 1);
final colorGrey = Color.fromRGBO(43, 43, 43, 1);

final textListName = GoogleFonts.montserrat(
    textStyle: TextStyle(
  color: colorGrey,
  fontSize: 14.0,
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.w800,
));

final textListData = GoogleFonts.montserrat(
    textStyle: TextStyle(
  color: colorGreyText,
  fontSize: 12.0,
  fontFamily: 'Montserrat',
  fontWeight: FontWeight.w700,
));

//Стиль регуляр текста
final textDecorationRegular = GoogleFonts.montserrat(
  textStyle: TextStyle(
    color: colorWhite,
    fontSize: 14.0,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  ),
);

//error text
final errorTextStyle = GoogleFonts.montserrat(
  textStyle: TextStyle(
    color: colorError,
    fontSize: 12.0,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  ),
);

//Стиль заголовка
final textDecorationExtraBold = GoogleFonts.montserrat(
  textStyle: TextStyle(
    height: 1.4,
    color: colorWhite,
    fontSize: 40.0,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w900,
  ),
);
//Стиль заголовка пурпл
final textDecorationExtraBoldPurple = GoogleFonts.montserrat(
  textStyle: TextStyle(
    height: 1.4,
    color: colorBase,
    fontSize: 40.0,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w900,
  ),
);
//текст для инпута
final textInputStyle = GoogleFonts.montserrat(
  textStyle: TextStyle(
    color: colorGreyText,
    fontSize: 14.0,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  ),
);
final textInputStyleFocus = GoogleFonts.montserrat(
  textStyle: TextStyle(
    color: colorBase,
    fontSize: 14.0,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  ),
);

//стиль для фиолетовой кнопки и белым текстом
final styleButton = ButtonStyle(
    backgroundColor: MaterialStateProperty.all(colorBase),
    foregroundColor: MaterialStateProperty.all(colorWhite),
    overlayColor: MaterialStateProperty.all(colorOverlayPurple),
    shadowColor: MaterialStateProperty.all(colorBlack),
    elevation: MaterialStateProperty.all(
        0), //на скок высоко кнопка над плоскостью - ругулируется тенью
    padding: MaterialStateProperty.all(
        EdgeInsets.only(left: 30, right: 30)), // отступы от краев
    minimumSize: MaterialStateProperty.all(Size(140, 40)),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    )) //минимальный рамзер // по центру
    );

//стиль для белой кнопки и белым текстом
final styleButton2 = ButtonStyle(
    side: MaterialStateProperty.all(BorderSide(
      color: colorBase,
      width: 2.0,
    )),
    backgroundColor: MaterialStateProperty.all(colorWhite),
    foregroundColor: MaterialStateProperty.all(colorWhite),
    overlayColor: MaterialStateProperty.all(colorLineBlack),
    shadowColor: MaterialStateProperty.all(colorBlack),
    elevation: MaterialStateProperty.all(
        0), //на скок высоко кнопка над плоскостью - ругулируется тенью
    padding: MaterialStateProperty.all(EdgeInsets.all(0)), // отступы от краев
    minimumSize: MaterialStateProperty.all(Size(140, 40)),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    )) //минимальный рамзер // по центру
    );

// final styleButton3 = ButtonStyle(
//   backgroundColor: MaterialStateProperty.all(colorLineBlack),
//   foregroundColor: MaterialStateProperty.all(colorWhite),
//   overlayColor: MaterialStateProperty.all(colorOverlayGrey),
//   shadowColor: MaterialStateProperty.all(colorBlack),
//   elevation: MaterialStateProperty.all(0),
//   padding: MaterialStateProperty.all(EdgeInsets.zero),
//   minimumSize: MaterialStateProperty.all(Size(140, 40)),
//   shape: MaterialStateProperty.all(RoundedRectangleBorder(
//     borderRadius: BorderRadius.circular(10),
//   )),
// );
final styleButton3 = ElevatedButton.styleFrom(
  visualDensity: VisualDensity.compact,
  backgroundColor: colorLineBlack,
  foregroundColor: colorWhite,
  // overlayColor:colorOverlayGrey,
  shadowColor: colorBlack,
  elevation: 0,
  padding: EdgeInsets.zero,
  minimumSize: Size(140, 40),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10),
  ),
);

//Стиль текста для кнопки
final textButton = GoogleFonts.montserrat(
  textStyle: TextStyle(
    color: colorWhite,
    fontSize: 14.0,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w900,
  ),
);

//Стиль фиолетового текста для кнопки
final textButton2 = GoogleFonts.montserrat(
  textStyle: TextStyle(
    color: colorBase,
    fontSize: 14.0,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w900,
  ),
);

final textOfMainPage = GoogleFonts.montserrat(
  textStyle: TextStyle(
    color: colorBase,
    fontSize: 24.0,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w900,
  ),
);

//Стиль для кнопки в тексте
final inTextButton = GoogleFonts.montserrat(
  textStyle: TextStyle(
    color: colorBase,
    fontSize: 14.0,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
    decoration: TextDecoration.underline,
  ),
);

//Стиль для текстовой кнопки
final buttonText = ButtonStyle(
  padding: MaterialStateProperty.all(EdgeInsets.all(0)),
  foregroundColor: MaterialStateProperty.all(
    colorBase,
  ),
  overlayColor: MaterialStateProperty.all(colorOverlayGrey),
);

final buttonTextComent = ButtonStyle(
  padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.zero),
  foregroundColor: MaterialStateProperty.all(
    colorGreyText,
  ),
  overlayColor: MaterialStateProperty.all(colorOverlayGrey),
);
//Стиль для текста текстовой кнопки
final buttonTextStyle = GoogleFonts.montserrat(
  textStyle: TextStyle(
    color: colorBase,
    fontSize: 14.0,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  ),
);
final buttonTextStyleComent = GoogleFonts.montserrat(
  textStyle: TextStyle(
    color: colorGreyText,
    fontSize: 12.0,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  ),
);

final buttonTextStyleLike = GoogleFonts.montserrat(
  textStyle: TextStyle(
    color: colorGrey,
    fontSize: 12.0,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  ),
);

final buttonTextStylText = GoogleFonts.montserrat(
  textStyle: TextStyle(
    color: colorGrey,
    fontSize: 14.0,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  ),
);
final buttonTextForGray = GoogleFonts.montserrat(
  textStyle: TextStyle(
    color: colorWhite,
    fontSize: 14.0,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  ),
);
