import 'package:flutter/material.dart';
import 'package:food_delivery_ui/colors_style.dart';
import 'package:food_delivery_ui/widgets/custom_row_button.dart';
import 'package:food_delivery_ui/widgets/custom_row_content.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({
    Key key,
    @required this.context,
  }) : super(key: key);

  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/bg_home_top.png'),
        Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 74.0),
                Text(
                  'Food app',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  'Why stay hungry when\nyou can order form Bella Onojie',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 58.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 30.0),
                Text(
                  'Download the bella onoje’s food app now on',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 24.0,
                  ),
                ),
                SizedBox(height: 80.0),
                Stack(
                  children: [
                    Align(
                        alignment: Alignment.topCenter,
                        child: Image.asset('assets/images/mockup.png')),
                    CustomRowButton(),
                  ],
                ),
                Container(
                  height: 1.0,
                  width: MediaQuery.of(context).size.width * 0.65,
                  color: BrandColors.colorDivider,
                ),
                SizedBox(height: 70.0),
                Text(
                  'How the app works',
                  style: TextStyle(
                    fontSize: 44.0,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                CustomRowContent(
                  imagePath: 'assets/images/phone_1.png',
                  h2: 'Create an account',
                  h4: 'Create/login to an existing\naccount to get started',
                  h3: 'An account is created with your email\nand a desired password',
                ),
                CustomRowContent(
                  isRight: true,
                  imagePath: 'assets/images/phone_2.png',
                  h2: 'Explore varieties',
                  h4: 'Shop for your favorites\nmeal as e dey hot.',
                  h3: 'Shop for your favorite meals or drinks\nand enjoy while doing it.',
                ),
                CustomRowContent(
                  imagePath: 'assets/images/phone_3.png',
                  h2: 'Checkout',
                  h4: 'When you done check out\nand get it delivered.',
                  h3: 'When you done check out and get it\ndelivered with ease.',
                ),
                Container(
                  height: 509.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/bg_home_end.png'),
                    ),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Download the app now.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 24.0),
                        Text(
                          'Available on your favorite store. Start your premium experience now',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 55.0),
                        CustomRowButton(),
                      ],
                    ),
                  ),
                ),
                //Footer()
              ],
            ),
          ),
        )
      ],
    );
  }
}
