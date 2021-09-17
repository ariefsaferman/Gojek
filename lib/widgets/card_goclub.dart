import 'package:flutter/material.dart';
import 'package:gojek/common/MyColors.dart';
import 'package:gojek/common/MyFontSize.dart';
import 'package:gojek/widgets/custom_card.dart';

class CardGoClub extends StatelessWidget {
  const CardGoClub({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      padding: EdgeInsets.all(20),
      bgColor: MyColors.white,
      shadow: true,
      shadowOpacity: .5,
      child: Row(
        
      ),
    );
  }
}