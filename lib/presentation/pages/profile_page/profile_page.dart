import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:likpinuz/presentation/pages/profile_page/widgets/EducationWidget.dart';
import 'package:likpinuz/presentation/pages/profile_page/widgets/SkillWidget.dart';
import 'package:likpinuz/presentation/widgets/CustomButton.dart';
import 'package:likpinuz/presentation/widgets/custom_text_field.dart';
import 'widgets/LanguageWidget.dart';
import 'widgets/work_experienece.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children:  [
          const CircleAvatar(
            radius: 150,
            backgroundImage: CachedNetworkImageProvider("https://picsum.photos/200/300"),
          ),
          const SizedBox(height:30 ,),
          CustomTextField(
            onSubmit: () {  },
            fieldText: 'Username'.tr,
            onChange: (String onChange) {  },
            hintText: '@username', controller: TextEditingController(),),
          const SizedBox(height:30 ,),
          CustomTextField(
            onSubmit: () {  },
            fieldText: 'address'.tr,
            onChange: (String onChange) {  },
            hintText: 'Toshkent shaxar mirzo ulug’bek', controller: TextEditingController(),),
          const SizedBox(height:30 ,),
          CustomTextField(
            maxLines: 6,
            textAlign: TextAlign.start,
            onSubmit: () {  },
            fieldText: 'bio'.tr,
            onChange: (String onChange) {  },
            hintText: 'chekish insonni o’ldiradi', controller: TextEditingController(),
            // contentPadding: const EdgeInsets.symmetric(vertical: 40),

          ),
          const SizedBox(height:30 ,),
          CustomTextField(
            maxLines: 6,
            textAlign: TextAlign.start,
            onSubmit: () {  },
            fieldText: 'professional_summary'.tr,
            onChange: (String onChange) {  },
            hintText: 'chekish insonni o’ldiradi', controller: TextEditingController(),
            // contentPadding: const EdgeInsets.symmetric(vertical: 40),

          ),
          const SizedBox(height:30 ,),
          const WorkingExperienceWidget(
            name: "Work Experience",
            date: "2020.02.03 - 2021.02.03",
            where: "To completely skip the formatting issues, ",
            position: "To completely skip the formatting issues, ",
            description: "To completely skip the formatting issues, use a professional resume templateasda dgadsga s...",
          ),
          const LanguageWidget(),
          const SkillWidget(),
          const EducationWidget(),
          const SizedBox(height: 20,),
          CustomButton(text: "Save",onTap: (){


          },width: 400,),
          const SizedBox(height: 50,),


        ],
      ),
    );
  }
}
