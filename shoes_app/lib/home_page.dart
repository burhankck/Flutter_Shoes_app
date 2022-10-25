import 'package:flutter/material.dart';
import 'package:shoes_app/two_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final double itemHeight = 300;
  final double itemWidth = 250;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        body: Padding(
          padding: PadingAll.generalPadding,
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: SizedboxGeneral.sizedheight),
                circleAndicon(),
                SizedBox(
                  height: SizedboxGeneral.sizedheigts,
                ),
                const Text(Texts.catologText, style: TextStyles.catologStyle),
                SizedBox(height: SizedboxGeneral.sizedheigts),
                shoesLogo(),
                SizedBox(height: SizedboxGeneral.sizedheigts),
                gridViewCards(context),
              ],
            ),
          ),
        ));
  }

  Container gridViewCards(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.66,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: GridView.count(
        padding: PadingAll.paddingOnly,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: (itemWidth / itemHeight),
        children: <Widget>[
          oneCard(),
          twoCard(),
          threeCard(),
          fourCard(),
          fiveCard(),
          sixCard(),
        ],
      ),
    );
  }

  Row circleAndicon() {
    return Row(
      children: const [
        CircleAvatar(backgroundImage: NetworkImage(NetworkImages.circleImage)),
        Spacer(),
        GeneralIcons.searchIcon,
      ],
    );
  }

  Container sixCard() {
    return Container(
      decoration: shoesDecoration.shoesDesign,
      padding: PadingAll.generalPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const card_Icons(),
          Container(
            height: SizedboxGeneral.shoesHeight,
            width: SizedboxGeneral.shoesWidth,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(NetworkImages.shoesSix))),
          ),
          SizedBox(
            height: SizedboxGeneral.shoestextHeight,
          ),
          const Text(Texts.adidas, style: shoesTextStyle.Textstyles),
          SizedBox(
            height: SizedboxGeneral.shoestextHeight,
          ),
          const Text(Texts.shoesSix, style: shoesTextStyle.Textstyles),
          SizedBox(
            height: SizedboxGeneral.shoestextHeight,
          ),
          const Text(
            Texts.moneyTextSix,
            style: shoesTextStyle.moneyTextStyle,
          ),
        ],
      ),
    );
  }

  Container fiveCard() {
    return Container(
      decoration: shoesDecoration.shoesDesign,
      padding: PadingAll.generalPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const card_Icons(),
          Container(
            height: SizedboxGeneral.shoesHeight,
            width: SizedboxGeneral.shoesWidth,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(NetworkImages.shoesFive))),
          ),
          SizedBox(
            height: SizedboxGeneral.shoestextHeight,
          ),
          const Text(Texts.nikee, style: shoesTextStyle.Textstyles),
          SizedBox(
            height: SizedboxGeneral.shoestextHeight,
          ),
          const Text(Texts.shoesFive, style: shoesTextStyle.Textstyles),
          SizedBox(
            height: SizedboxGeneral.shoestextHeight,
          ),
          const Text(
            Texts.moneyTextFive,
            style: shoesTextStyle.moneyTextStyle,
          ),
        ],
      ),
    );
  }

  Container fourCard() {
    return Container(
      decoration: shoesDecoration.shoesDesign,
      padding: PadingAll.generalPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const card_Icons(),
          Container(
            height: SizedboxGeneral.shoesHeight,
            width: SizedboxGeneral.shoesWidth,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(NetworkImages.shoesFour))),
          ),
          SizedBox(
            height: SizedboxGeneral.shoestextHeight,
          ),
          const Text(Texts.adidas, style: shoesTextStyle.Textstyles),
          SizedBox(
            height: SizedboxGeneral.shoestextHeight,
          ),
          const Text(Texts.shoesFour, style: shoesTextStyle.Textstyles),
          SizedBox(
            height: SizedboxGeneral.shoestextHeight,
          ),
          const Text(
            Texts.moneyTextFour,
            style: shoesTextStyle.moneyTextStyle,
          ),
        ],
      ),
    );
  }

  Container threeCard() {
    return Container(
      decoration: shoesDecoration.shoesDesign,
      padding: PadingAll.generalPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const card_Icons(),
          Container(
            height: SizedboxGeneral.shoesHeight,
            width: SizedboxGeneral.shoesWidth,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(NetworkImages.shoesThree))),
          ),
          SizedBox(
            height: SizedboxGeneral.shoestextHeight,
          ),
          const Text(Texts.adidas, style: shoesTextStyle.Textstyles),
          SizedBox(
            height: SizedboxGeneral.shoestextHeight,
          ),
          const Text(Texts.shoesThree, style: shoesTextStyle.Textstyles),
          SizedBox(
            height: SizedboxGeneral.shoestextHeight,
          ),
          const Text(
            Texts.moneyTextThree,
            style: shoesTextStyle.moneyTextStyle,
          ),
        ],
      ),
    );
  }

  Container twoCard() {
    return Container(
      decoration: shoesDecoration.shoesDesign,
      padding: PadingAll.generalPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const card_IconOutlined(),
          Container(
            height: SizedboxGeneral.shoesHeight,
            width: SizedboxGeneral.shoesWidth,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(NetworkImages.shoesTwo))),
          ),
          SizedBox(
            height: SizedboxGeneral.shoestextHeight,
          ),
          const Text(Texts.nikee, style: shoesTextStyle.Textstyles),
          SizedBox(
            height: SizedboxGeneral.shoestextHeight,
          ),
          const Text(Texts.shoesTwo, style: shoesTextStyle.Textstyles),
          SizedBox(
            height: SizedboxGeneral.shoestextHeight,
          ),
          const Text(
            Texts.moneyTextTwo,
            style: shoesTextStyle.moneyTextStyle,
          ),
        ],
      ),
    );
  }

  Container oneCard() {
    return Container(
      decoration: shoesDecoration.shoesDesign,
      padding: PadingAll.generalPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const card_Icons(),
          Container(
            height: SizedboxGeneral.shoesHeight,
            width: SizedboxGeneral.shoesWidth,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(NetworkImages.shoesOne))),
          ),
          SizedBox(
            height: SizedboxGeneral.shoestextHeight,
          ),
          const Text(Texts.nikee, style: shoesTextStyle.Textstyles),
          SizedBox(
            height: SizedboxGeneral.shoestextHeight,
          ),
          const Text(Texts.shoesOne, style: shoesTextStyle.Textstyles),
          SizedBox(
            height: SizedboxGeneral.shoestextHeight,
          ),
          const Text(
            Texts.moneyTextOne,
            style: shoesTextStyle.moneyTextStyle,
          ),
        ],
      ),
    );
  }

  Row shoesLogo() {
    return Row(
      children: [
        Container(
          width: SizedboxGeneral.filterwidth,
          height: SizedboxGeneral.filterheight,
          child: Row(
            children: [
              SizedBox(width: SizedboxGeneral.sizewidth),
              GeneralIcons.filterIcon,
              SizedBox(width: SizedboxGeneral.sizewidth),
              Text(Texts.filterText, style: TextStyles.filterStyle),
              SizedBox(width: SizedboxGeneral.sizewidth),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        SizedBox(width: SizedboxGeneral.sizewidths),
        const containerNike(),
        SizedBox(width: SizedboxGeneral.sizewidths),
        const containerAdidas(),
        SizedBox(width: SizedboxGeneral.sizewidths),
        const containerPuma(),
        SizedBox(width: SizedboxGeneral.sizewidths),
        const containerNewBalance(),
      ],
    );
  }
}

class card_Icons extends StatelessWidget {
  const card_Icons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        GeneralIcons.favoriteIcon,
        Spacer(),
        GeneralIcons.addIcon,
      ],
    );
  }
}

class card_IconOutlined extends StatelessWidget {
  const card_IconOutlined({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        GeneralIcons.favoriteOutlined,
        Spacer(),
        GeneralIcons.addIcon,
      ],
    );
  }
}

class shoesTextStyle {
  static const Textstyles = TextStyle(
    color: Colors.grey,
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w400,
  );
  static const moneyTextStyle = TextStyle(
      color: generalColor.generalColors,
      fontWeight: FontWeight.w700,
      fontSize: 25);
}

class shoesDecoration {
  static BoxDecoration shoesDesign = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
  );
}

class containerNewBalance extends StatelessWidget {
  const containerNewBalance({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.contain, image: AssetImage(NetworkImages.balanceImage)),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class generalColor {
  static const generalColors = Color.fromARGB(255, 223, 173, 24);
  static const whiteColors = Colors.white;
  static const blackColors = Colors.black;
}

class containerPuma extends StatelessWidget {
  const containerPuma({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.contain, image: AssetImage(NetworkImages.pumaImage)),
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class containerNike extends StatelessWidget {
  const containerNike({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.contain, image: AssetImage(NetworkImages.nikeeImage)),
        color: generalColor.generalColors,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class containerAdidas extends StatelessWidget {
  const containerAdidas({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.contain, image: AssetImage(NetworkImages.adidasImage)),
        color: generalColor.generalColors,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}

class PadingAll {
  static const generalPadding = EdgeInsets.all(16.0);
  static const paddingOnly = EdgeInsets.only(top: 10);
}

class SizedboxGeneral {
  static double sizedheight = 50;
  static double sizedheigts = 20;
  static double shoestextHeight = 5;
  static double sizewidth = 5;
  static double sizewidths = 20;
  static double filterwidth = 95;
  static double filterheight = 50;
  static double containerHeight = 520;
  static double shoesHeight = 80;
  static double shoesWidth = 170;
}

class Texts {
  static const catologText = 'Catolog';
  static const filterText = 'Filter';
  static const nikee = 'Nike';
  static const adidas = 'Adidas';
  static const shoesOne = 'Air Max';
  static const moneyTextOne = '\$ 280';
  static const moneyTextTwo = '\$ 220';
  static const moneyTextThree = '\$ 240';
  static const moneyTextFour = '\$ 180';
  static const moneyTextFive = '\$ 320';
  static const moneyTextSix = '\$ 235';

  static const shoesTwo = 'Venture Runner';
  static const shoesThree = 'Super Star';
  static const shoesFour = 'Krampon';
  static const shoesFive = 'Air Force';
  static const shoesSix = 'Rom';
  static const size = 'Size';
}

class NetworkImages {
  static const circleImage =
      'https://i.pinimg.com/originals/dc/0b/d2/dc0bd23e145062dc6846bc320e4fd860.jpg';
  static const nikeImage = 'assets/nikee.png';
  static const nikeeImage = 'assets/nike.png';
  static const adidasImage = 'assets/adidas.png';
  static const pumaImage = 'assets/puma.jpg';
  static const balanceImage = 'assets/balance.png';
  static const shoesOne = 'assets/shoes_one.png';
  static const shoesTwo = 'assets/shoes_two.png';
  static const shoesThree = 'assets/shoes_three.png';
  static const shoesFour = 'assets/shoes_four.png';
  static const shoesFive = 'assets/shoes_five.png';
  static const shoesSix = 'assets/shoes_six.png';
}

class TextStyles {
  static const catologStyle = TextStyle(
    color: Colors.black,
    fontSize: 30,
    fontWeight: FontWeight.w800,
    wordSpacing: 2,
    letterSpacing: 1,
  );
  static const filterStyle = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    wordSpacing: 2,
    letterSpacing: 1,
  );
}

class GeneralIcons {
  static const searchIcon = Icon(Icons.search, size: 30);
  static const filterIcon = Icon(Icons.filter_alt, size: 20);
  static const favoriteIcon = Icon(
    Icons.favorite_border,
    color: generalColor.generalColors,
    size: 25,
  );
  static const favoriteIconWhite = Icon(
    Icons.favorite_border,
    color: generalColor.whiteColors,
    size: 35,
  );
  static const favoriteOutlined = Icon(
    Icons.favorite_outlined,
    color: generalColor.generalColors,
    size: 25,
  );

  static const addIcon =
      Icon(Icons.add, color: generalColor.generalColors, size: 25);
  static const leftIcon =
      Icon(Icons.chevron_left, color: generalColor.whiteColors, size: 35);
  static const shopIcon = Icon(
    Icons.shopping_cart_outlined,
    size: 25,
    color: generalColor.blackColors,
  );
}
