import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/header_with_searchbox.dart';
import 'package:plant_app/screens/home/components/title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // it will provie us total height and width of our screen
    // nó sẽ cung cấp cho chúng tôi tổng chiều cao và chiều rộng của màn hình của bạn
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    // nó cho phép cuộn trên thiết bị nhỏ
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaaaaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            text: "more",
            prress: () {},
          ),
          //it will cover 40% of our totol width
          // nó sẽ bao phủ 40 % chiều rộng totol của chúng ta
          RecomendPlantCart(
            image: "asset/images/image_1.png",
            title: "hoanda",
            country: "hoang",
            price: 12,
            press: () {},
          ),
          RecomendPlantCart(
            image: "asset/images/image_1.png",
            title: "hoanda",
            country: "hoang",
            price: 12,
            press: () {},
          ),
          RecomendPlantCart(
            image: "asset/images/image_1.png",
            title: "hoanda",
            country: "hoang",
            price: 12,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecomendPlantCart extends StatelessWidget {
  const RecomendPlantCart({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.press,
  }) : super(key: key);
  final String image, title, country;
  final int price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                // width: size.width * 0.2,
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: <Widget>[
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "&title\n".toUpperCase(),
                          style: Theme.of(context).textTheme.button,
                        ),
                        TextSpan(
                          text: "$country".toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        )
                      ],
                    ),
                  ),
                  Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context).textTheme.button.copyWith(
                          color: kPrimaryColor,
                        ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnder extends StatelessWidget {
  const TitleWithCustomUnder({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
