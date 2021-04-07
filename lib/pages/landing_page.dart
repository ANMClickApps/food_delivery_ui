import 'package:flutter/material.dart';
import 'package:food_delivery_ui/model/appdata_model.dart';
import 'package:food_delivery_ui/pages/components/footer.dart';
import 'package:food_delivery_ui/pages/components/home_item.dart';
import 'package:food_delivery_ui/pages/components/navbar.dart';
import 'package:provider/provider.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key key}) : super(key: key);

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              NavBar(),
              FutureBuilder(builder: (context, snapshot) {
                return Column(
                  children: getContent(_getCurrentIndex()),
                );
              }),
              Footer(),
            ],
          ),
        ));
  }

  _getCurrentIndex() {
    var index = Provider.of<AppDataModel>(context).getCurrentIndex;
    return index;
  }

  List<Widget> getContent(index) {
    return [
      [HomeItem(context: context)],
      [Text('product')],
      [Text('faq')],
      [Text('contact')],
    ][index];
  }
}
