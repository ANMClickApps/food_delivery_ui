import 'package:flutter/material.dart';
import 'package:food_delivery_ui/model/appdata_model.dart';
import 'package:food_delivery_ui/widgets/item_text.dart';
import 'package:provider/provider.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 1200.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/images/bella_logo.png'),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ItemText(
                    text: 'Home',
                    isSelected: selectedItemIndex == 0,
                    onPressed: () {
                      onPressItem(0);
                    },
                  ),
                  SizedBox(width: 30.0),
                  ItemText(
                    text: 'Product',
                    isSelected: selectedItemIndex == 1,
                    onPressed: () {
                      onPressItem(1);
                    },
                  ),
                  SizedBox(width: 30.0),
                  ItemText(
                    text: 'Faq',
                    isSelected: selectedItemIndex == 2,
                    onPressed: () {
                      onPressItem(2);
                    },
                  ),
                  SizedBox(width: 30.0),
                  ItemText(
                    text: 'Contact',
                    isSelected: selectedItemIndex == 3,
                    onPressed: () {
                      onPressItem(3);
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  onPressItem(int index) {
    setState(() {
      selectedItemIndex = index;
      Provider.of<AppDataModel>(context, listen: false)
          .updateSelectedIndex(index);
    });
  }
}
