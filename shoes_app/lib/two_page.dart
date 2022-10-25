import 'package:flutter/material.dart';
import 'package:shoes_app/home_page.dart';

class TwoPage extends StatelessWidget {
  const TwoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Padding(
              padding: PaddingGeneral.paddingTwoPage,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: cardDecoration(),
                child: Column(
                  children: [
                    SizedBox(
                      height: Sized.sizedOneCard,
                      child: Padding(
                        padding: PaddingGeneral.paddingIcons,
                        child: Row(
                          children: const [
                            GeneralIcons.leftIcon,
                            Spacer(),
                            GeneralIcons.favoriteIconWhite,
                          ],
                        ),
                      ),
                    ),
                    Image.asset(NetworkImages.shoesTwo),
                  ],
                ),
              ),
            ),
          ),
          Positioned.fill(
            top: Sized.positionTop,
            child: Padding(
              padding: PaddingGeneral.paddingTwoPage,
              child: Container(
                decoration: TwoDecoration.decorationgrey,
                child: Padding(
                  padding: PadingAll.generalPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: Sized.sizedHeightTwoCard,
                      ),
                      const Text(
                        Texts.nikee,
                        style: NikeStyle.nikeStyles,
                      ),
                      SizedBox(
                        height: Sized.sizedHeightText,
                      ),
                      const Text(
                        Texts.shoesTwo,
                        style: shoesTextStyle.Textstyles,
                      ),
                      SizedBox(
                        height: Sized.sizedHeightSize,
                      ),
                      const Text(
                        Texts.size,
                        style: TwoPageTextStyle.sizeStyle,
                      ),
                      SizedBox(height: Sized.sizedHeightSize),
                      Row(
                        children: [
                          containerOneSize(),
                          SizedBox(width: SizedboxGeneral.sizewidths),
                          containerSize(USText.textTwo),
                          SizedBox(width: SizedboxGeneral.sizewidths),
                          containerSize(USText.textThree),
                          SizedBox(width: SizedboxGeneral.sizewidths),
                          containerSize(USText.textFour),
                          SizedBox(width: SizedboxGeneral.sizewidths),
                          containerSize(USText.textFive),
                        ],
                      ),
                      SizedBox(height: Sized.sizedHeightSize),
                      const Text(
                        USText.colorText,
                        style: TwoPageTextStyle.sizeStyle,
                      ),
                      SizedBox(height: Sized.sizedHeightSize),
                      Row(
                        children: [
                          const oneColor(),
                          SizedBox(width: SizedboxGeneral.sizewidths),
                          const twoColor(),
                          SizedBox(width: SizedboxGeneral.sizewidths),
                          const threeColor(),
                          SizedBox(width: SizedboxGeneral.sizewidths),
                          const fourColor(),
                          SizedBox(width: SizedboxGeneral.sizewidths),
                          const fiveColor(),
                        ],
                      ),
                      SizedBox(
                        height: SizedboxGeneral.sizedheigts,
                      ),
                      Row(
                        children: [
                          Container(
                            height: Sized.cardHeight,
                            width: Sized.cardWidth,
                            decoration: TwoDecoration.decorationorange,
                            child: Padding(
                              padding: PadingAll.generalPadding,
                              child: Row(
                                children: [
                                  const Text(
                                    Texts.moneyTextTwo,
                                    style: NikeStyle.nikeStyles,
                                  ),
                                  const Spacer(),
                                  Container(
                                    width: Sized.containerWidth,
                                    decoration: TwoDecoration.decorationwhite,
                                    child: Row(
                                      children: [
                                        SizedBox(width: Sized.sizedWidthFive),
                                        const Padding(
                                          padding:
                                              PaddingGeneral.paddingTwoPageCard,
                                          child: GeneralIcons.shopIcon,
                                        ),
                                        SizedBox(width: Sized.sizedWidthTen),
                                        const Text(
                                          USText.addText,
                                          style: TwoPageTextStyle.USblackStyle,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container containerOneSize() {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: generalColor.generalColors,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          USText.textOne,
          style: TwoPageTextStyle.usStyle,
        ),
      ),
    );
  }

  Container containerSize(String text1) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: generalColor.whiteColors,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: Text(
          text1,
          style: TwoPageTextStyle.USblackStyle,
        ),
      ),
    );
  }

  BoxDecoration cardDecoration() {
    return BoxDecoration(
      color: Color.fromARGB(255, 103, 174, 214),
      borderRadius: BorderRadius.circular(30),
    );
  }
}

class fiveColor extends StatelessWidget {
  const fiveColor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 3.0,
          style: BorderStyle.solid,
        ),
        gradient: const LinearGradient(
            colors: [Colors.white, Colors.grey],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.5, 0.5]),
      ),
    );
  }
}

class fourColor extends StatelessWidget {
  const fourColor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 3.0,
          style: BorderStyle.solid,
        ),
        gradient: const LinearGradient(
            colors: [Colors.grey, Colors.blue],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.5, 0.5]),
      ),
    );
  }
}

class threeColor extends StatelessWidget {
  const threeColor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 3.0,
          style: BorderStyle.solid,
        ),
        gradient: const LinearGradient(
            colors: [Colors.yellow, Colors.blue],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.5, 0.5]),
      ),
    );
  }
}

class twoColor extends StatelessWidget {
  const twoColor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 3.0,
          style: BorderStyle.solid,
        ),
        gradient: const LinearGradient(
            colors: [Colors.red, Colors.black],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.5, 0.5]),
      ),
    );
  }
}

class oneColor extends StatelessWidget {
  const oneColor({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: generalColor.generalColors,
          width: 3.0,
          style: BorderStyle.solid,
        ),
        gradient: const LinearGradient(
            colors: [Colors.black, Colors.white],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.5, 0.5]),
      ),
    );
  }
}

class TwoPageTextStyle {
  static const usStyle =
      TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500);
  static const sizeStyle = TextStyle(
    color: Colors.grey,
    fontSize: 16,
    fontWeight: FontWeight.w600,
    wordSpacing: 1,
    letterSpacing: 1,
  );
  static const USblackStyle =
      TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
}

class TwoDecoration {
  static BoxDecoration decorationwhite = BoxDecoration(
    color: generalColor.whiteColors,
    borderRadius: BorderRadius.circular(10),
  );
  static BoxDecoration decorationorange = BoxDecoration(
    color: generalColor.generalColors,
    borderRadius: BorderRadius.circular(10),
  );
  static BoxDecoration decorationgrey = BoxDecoration(
    color: Colors.grey.shade200,
    borderRadius: BorderRadius.circular(30),
  );
}

class USText {
  static const textOne = 'US 6';
  static const textTwo = 'US 7';
  static const textThree = 'US 8';
  static const textFour = 'US 9';
  static const textFive = 'US 10';
  static const colorText = 'Color';
  static const addText = 'Add to Card';
}

class NikeStyle {
  static const nikeStyles = TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500);
}

class PaddingGeneral {
  static const paddingTwoPage = EdgeInsets.all(8.0);
  static const paddingTwoPageCard = EdgeInsets.all(6.0);
  static const paddingIcons =
      EdgeInsets.symmetric(horizontal: 20, vertical: 50);
}

class Sized {
  static double sizedOneCard = 100;
  static double sizedHeightTwoCard = 8;
  static double sizedHeightText = 5;
  static double sizedHeightSize = 15;
  static double sizedWidthTen = 10;
  static double sizedWidthFive = 5;
  static double containerWidth = 160;
  static double cardHeight = 65;
  static double cardWidth = 330;
  static double positionTop = 430;
}
