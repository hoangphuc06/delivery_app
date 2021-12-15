import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/orderTracking/orderTracking.dart';
import 'package:delivery_app/src/features/presentation/tabs/my_order_tab/View/components/empty_order_view.dart';
import 'package:delivery_app/src/features/presentation/tabs/my_order_tab/View/components/historyOrder.dart';
import 'package:delivery_app/src/features/presentation/tabs/my_order_tab/View/components/onComing_page.dart';
import 'package:delivery_app/src/features/presentation/tabs/my_order_tab/View/components/preOrders_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OrderTab extends StatefulWidget {
  const OrderTab({Key? key}) : super(key: key);

  @override
  _OrderTabState createState() => _OrderTabState();
}

class _OrderTabState extends State<OrderTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(right: 15),
                  child: FaIcon(
                    FontAwesomeIcons.bell,
                  ),
                ),
              ],
            )
          ],
          backgroundColor: Colors.white,
          elevation: 0,
          title: Text(
            "Orders",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: TabBar(
              labelColor: primary,
              unselectedLabelColor: primary2,
              indicatorColor: primary,
              indicatorWeight: 3,
              tabs: [
                Tab(
                  text: "Pre-Orders",
                ),
                Tab(
                  text: "Oncoming",
                ),
                Tab(
                  text: "History",
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            PreOrdersPage(),
            OrderTracking(),
            EmptyOrderView(),
          ],
        ),
      ),
    );
  }
}
