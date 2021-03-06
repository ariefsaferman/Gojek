import 'package:flutter/material.dart';
import 'package:gojek/common/MyColors.dart';
import 'package:gojek/common/my_style.dart';
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
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/images/ic_indoclub.png", 
                      height: 30,
                      width: 30,
                    ),
                    SizedBox(width: 5,), 
                    Expanded(
                      child: Text(
                        "goclub", 
                        style: MyStyle.textTitleBlack,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 3,), 
                Text(
                  "Our new loyalty program", 
                  style: MyStyle.textParagraphBlack,
                  
                  
                )
              ],
            ),
          ),
          SizedBox(width: 10,), 
          CustomCard(
            onTap: () {},
            padding: EdgeInsets.zero,
            bgColor: MyColors.green,
            shadow: false,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Join for free", 
                style: MyStyle.textButtomWhite,
              ),
            ),
          )
        ],
      ),
    );
  }
}