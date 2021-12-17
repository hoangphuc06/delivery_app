import 'package:delivery_app/src/features/presentation/commons_widgets/BackButtons/back_button.dart';
import 'package:delivery_app/src/features/presentation/commons_widgets/Headers/header_text.dart';
import 'package:delivery_app/src/features/presentation/profile_detail_page/View/Components/avatar_view.dart';
import 'package:delivery_app/src/features/presentation/profile_detail_page/View/Components/textfields_view.dart';
import 'package:delivery_app/src/utils/styles/box_decoration.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/src/colors/colors.dart';
import 'package:delivery_app/src/utils/Extensions/screen_size.dart';

class ProfileDetailPage extends StatefulWidget {
  const ProfileDetailPage({Key? key}) : super(key: key);

  @override
  _ProfileDetailPageState createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: bgGreyPage,
      appBar: AppBar(
        title: headerText(text: 'Edit Profile', fontSize: 17, fontWeight: FontWeight.w600),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.4,
        // leading: Builder(builder: (BuildContext context) {
        //   return backButton(context, Colors.black);
        // }),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              padding: EdgeInsets.only(top: 20, right: 15),
              child: headerText(
                  text: 'Done',
                  color: green,
                  fontSize: 17,
                  fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                margin: EdgeInsets.only(
                    top: screenHeight.getScreenHeight(
                        context: context, multiplier: 0.1),
                    right: 15,
                    left: 15),
                decoration: createBoxDecorationWithShadow(),
                width: screenWidth.getScreenWidth(context: context),
                height: screenHeight.getScreenHeight(
                    context: context, multiplier: 0.7),
                child: Column(children: [
                  Transform.translate(
                      offset: Offset(0, -60),
                      child: AvatarView(
                          backgroundImage:
                              'https://images.unsplash.com/photo-1624561172888-ac93c696e10c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=389&q=80')),
                  TextFieldsProfileDetailView()
                ]),
              )
            ]),
          )
        ],
      ),
    );
  }
}
