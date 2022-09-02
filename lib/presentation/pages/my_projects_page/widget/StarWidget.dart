import 'package:flutter/material.dart';

import '../../../../app/config/app_colors.dart';
class StarsWidget extends StatefulWidget {
   StarsWidget({Key? key, required this.star, required this.onRate, required this.isRated}) : super(key: key);
  int star;
  final Function(int rating) onRate;
  final bool isRated;

  @override
  State<StarsWidget> createState() => _StarsWidgetState();
}
class _StarsWidgetState extends State<StarsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children:
      List<Widget>.generate(5,
              (index) => InkWell(
            onTap:widget.isRated?null: (){
              widget.onRate(index+1);
              widget.star=index+1;
              setState(() {
              });
            }
                ,
            child: widget.star-1<index?
            const Padding(padding:EdgeInsets.symmetric(horizontal: 5),child:
            Icon(Icons.star_border,color: AppColor.starColorFFCF00,)):
            const Padding(padding:EdgeInsets.symmetric(horizontal: 5),child:
            Icon(Icons.star,color:AppColor.starColorFFCF00)),
          )),
    );
  }
}