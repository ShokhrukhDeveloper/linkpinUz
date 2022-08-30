import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
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
            CustomTextField(
              onSubmit: () {  },
              fieldText: 'Username'.tr,
              onChange: (String onChange) {  },
              hintText: '@username', controller: TextEditingController(),),
          ],
        ),
      ),
    );
  }
}
