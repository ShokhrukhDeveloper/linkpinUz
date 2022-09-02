import 'package:flutter/material.dart';
import 'package:likpinuz/presentation/pages/my_projects_page/my_projects_page.dart';
import 'package:likpinuz/presentation/pages/my_projects_page/widget/my_product_details_widget.dart';
import 'package:likpinuz/presentation/pages/setting_page/setting_page.dart';
import 'package:likpinuz/presentation/widgets/left_navigation_bar/RightNavigationBar.dart';

import '../profile_page/profile_page.dart';
import '../social_networks_page/social_networks_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final PageController controller=PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("profile_page page"),),
      body: Row(
        children:  [
           RightNavigationBar(pageController: controller,),
          Expanded(
            child: PageView(
              controller: controller,
              children:  [
                const ProfilePage(),
                SocialNetworksPage(),
                const MyProjectsPage(),
                const MyProductDetailsWidget()
              ],
            ),
          )
        ],
      ),
    );
  }
}
