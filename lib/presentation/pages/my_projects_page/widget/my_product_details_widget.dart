import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:likpinuz/app/config/AppTextStyle.dart';
import 'package:likpinuz/app/config/app_colors.dart';
import 'package:likpinuz/presentation/pages/my_projects_page/widget/projectImageItemWidget.dart';
class MyProductDetailsWidget extends StatelessWidget {
  const MyProductDetailsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Container(

            margin: const EdgeInsets.all(30),
            padding: const EdgeInsets.all(20),

            decoration: const BoxDecoration(
                color: AppColor.white,
                boxShadow: [ BoxShadow(
                    color: AppColor.shadow1E1E1E,
                    spreadRadius: 5.0,
                    blurRadius: 10,
                    blurStyle: BlurStyle.normal)]
            ),
            child: LayoutBuilder(
                builder: (context,constrains) {
                  return SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Column(
                              children:  [
                                SizedBox(
                                  height: 50,
                                  width: constrains.maxWidth-120,
                                  child: const Text("Tentakmen web sayti ",
                                    style: AppTextStyle.styleNameProject,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(
                                  height: 35,
                                  width: constrains.maxWidth-120,
                                  child: const Text("Hasanboy Do’smatov - 1 oy ilgari.",
                                    style: AppTextStyle.styleNameOwnerData,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                SizedBox(

                                  width: constrains.maxWidth-120,
                                  child: const Text(""
                                      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
                                      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
                                      "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
                                    ,
                                    style: AppTextStyle.styleNameProjectDescription,
                                    overflow: TextOverflow.fade,
                                  ),
                                ),

                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 20,top: 30),
                              height: 150,
                              width: 80,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children:  [
                                  Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: AppColor.black,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(child: IconButton(
                                          onPressed: (){
                                            Navigator.pop(context);
                                          },
                                          icon:const Icon(Icons.chevron_left_rounded,color: AppColor.white,)))),
                                  Container(
                                    width:70,
                                    height: 70,
                                    decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(35),
                                        image:  const DecorationImage(
                                            image: CachedNetworkImageProvider(
                                              "https://picsum.photos/200/300",



                                            ),
                                            fit: BoxFit.cover

                                        )
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 30,),
                        GridView.count(
                          crossAxisCount: constrains.maxWidth~/370,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20,
                          childAspectRatio: 1,
                          shrinkWrap: true,
                          children: [
                            ProjectImageItemWidget(),
                            ProjectImageItemWidget(),
                            ProjectImageItemWidget(),
                            ProjectImageItemWidget(),
                            ProjectImageItemWidget(),
                            ProjectImageItemWidget(),
                          ],
                        ),


                      ],
                    ),
                  );
                }
            ),
          ),
        ),
      )

    );
  }
}
