import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Alerts/alert_dialog.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/tabs/explore_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs/favourite_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs/my_order_tab/View/order_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs/profile_tab.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';

class TabsPage extends StatefulWidget {
  const TabsPage({Key? key}) : super(key: key);

  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      _pedirLocation(context);
    });
  }

  final List<Widget> _widgetOptions = [
    ExploreTab(),
    const OrderTab(),
    const FavouriteTab(),
    const ProfileTab()
  ];

  int _selectedItemIndex = 0;

  void _cambiarWidget(int index) {
    setState(() {
      _selectedItemIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedItemIndex),
      bottomNavigationBar: _bottomNavigationBar(context),
      // bottomNavigationBar: BottomNavyBar(
      //   selectedIndex: _selectedItemIndex,
      //   items: [
      //     BottomNavyBarItem(
      //       icon: FaIcon(FontAwesomeIcons.compass, size: 25,),
      //       title: Text('Explore'),
      //       activeColor: orange,
      //     ),
      //     BottomNavyBarItem(
      //       textAlign: TextAlign.center,
      //       icon: FaIcon(FontAwesomeIcons.shoppingCart, size: 25,),
      //       title: Text('Cart'),
      //       activeColor: orange,
      //     ),
      //     BottomNavyBarItem(
      //       icon: FaIcon(FontAwesomeIcons.bookmark, size: 25,),
      //       title: Text('Favorite'),
      //       activeColor: orange,
      //     ),
      //     BottomNavyBarItem(
      //       icon: FaIcon(FontAwesomeIcons.user, size: 25,),
      //       title: Text('User'),
      //       activeColor: orange,
      //     ),
      //   ],
      //   onItemSelected: (int value) {
      //     setState(() {
      //       _selectedItemIndex = value;
      //     });
      //   },
      // ),
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 25,
        selectedItemColor: orange,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedItemIndex,
        onTap: _cambiarWidget,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon:  FaIcon(FontAwesomeIcons.compass), label: "Explore"),
          BottomNavigationBarItem(icon:  FaIcon(FontAwesomeIcons.shoppingCart), label: "My Order"),
          BottomNavigationBarItem(icon:  FaIcon(FontAwesomeIcons.bookmark), label: "Favourite"),
          BottomNavigationBarItem(icon:  FaIcon(FontAwesomeIcons.user), label: "Profile")
        ]);
  }

  Future _pedirLocation(BuildContext context) async {
    await showAlertDialog(
        context,
        'assets/ic_welcome.png',
        "Enable Your Location",
        "Please allow to use your location to show nearby restaurant on the map.",
        //_doneButton(context,'Enable Location')
        createButton(
            context: context,
            icon: const AssetImage('assets/ic_welcome.png'),
            labelButton: 'Enable Location',
            buttonColor: orange,
            func: () {}));
  }
}
