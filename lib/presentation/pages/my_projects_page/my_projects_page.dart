import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:likpinuz/app/config/app_colors.dart';
import 'package:likpinuz/presentation/pages/my_projects_page/widget/ProductListItemWidget.dart';
import 'package:likpinuz/presentation/pages/my_projects_page/widget/add_product_widget.dart';
import 'package:likpinuz/presentation/pages/my_projects_page/widget/my_product_details_widget.dart';

class MyProjectsPage extends StatefulWidget {
  const MyProjectsPage({Key? key}) : super(key: key);

  @override
  State<MyProjectsPage> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjectsPage> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                InkWell(onTap: () {

                  showDialog(context: context, builder: (_)=>const MyProductDetailsWidget());
                }, child: const ProductListItemWidget()),
                // InkWell(onTap: () {}, child: const ProductListItemWidget()),

              ],
            ),
          ),
          Positioned(
              right: 50,
              bottom: 50,
              child: InkWell(
                onTap: () {
                  // setState(() =>index=1);
                  showDialog(
                      context: context,
                      builder: (_) => const AddProductAlertDialogWidget());
                },
                child: Ink(
                  child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: AppColor.shadow1E1E1E,
                                spreadRadius: 5.0,
                                blurRadius: 10,
                                blurStyle: BlurStyle.normal)
                          ],
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(color: AppColor.black, width: 2),
                          color: Colors.white),
                      child: Center(
                          child: SvgPicture.asset(
                        "assets/svg_icons/ic_add_product.svg",
                        width: 30,
                        height: 30,
                      ))),
                ),
              ))
        ],
      ),
    );
  }
}
