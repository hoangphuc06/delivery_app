import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
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
          backgroundColor: Colors.white,
          elevation: 0.5,
          title: headerText(
              text: 'My Orders',
              color: primaryColor,
              fontSize: 17,
              fontWeight: FontWeight.w600),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: TabBar(
              labelColor: primary,
              unselectedLabelColor: greyone,
              indicatorColor: primary,
              indicatorWeight: 3,
              tabs: [
                Tab(
                  text: "On coming",
                ),
                Tab(
                  text: "Pre-Orders",
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
            OrderTracking(),
            PreOrdersPage(),
            EmptyOrderView(),
          ],
        ),
      ),
    );
  }
}
