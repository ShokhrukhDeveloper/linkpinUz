import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:get/get.dart';
import 'package:likpinuz/presentation/widgets/custom_text_field.dart';


class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
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

          ],
        ),
      ),
    );
  }
}
