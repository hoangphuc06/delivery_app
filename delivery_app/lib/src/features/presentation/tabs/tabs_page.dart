import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Alerts/alert_dialog.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Buttons/rounded_button.dart';
import 'package:delivery_app/src/features/presentation/orderTracking/orderTracking.dart';
import 'package:delivery_app/src/features/presentation/tabs/explore_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs/favourite_tab.dart';
import 'package:delivery_app/src/features/presentation/tabs/my_order_tab/View/components/onComing_page.dart';
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
    OnComingPage(),
    OrderTab(),
    ProfileTab()
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
    );
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 25,
        selectedItemColor: green,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedItemIndex,
        onTap: _cambiarWidget,
        showUnselectedLabels: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon:  FaIcon(FontAwesomeIcons.compass, size: 20,), label: "Explore"),
          BottomNavigationBarItem(icon:  FaIcon(FontAwesomeIcons.opencart, size: 20,), label: "My Cart"),
          BottomNavigationBarItem(icon:  FaIcon(FontAwesomeIcons.list, size: 20,), label: "My Order"),
          BottomNavigationBarItem(icon:  FaIcon(FontAwesomeIcons.user, size: 20,), label: "Profile")
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
            buttonColor: green,
            func: () {
              Navigator.pop(context);
            }));
  }
}
