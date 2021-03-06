import 'package:flutter/material.dart';
import 'package:gojek/common/MyColors.dart';
import 'package:gojek/common/MyFontSize.dart';
import 'package:gojek/widgets/card_goclub.dart';
import 'package:gojek/widgets/custom_button_icon.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<bool> tabBarBadgetList = [false, false, false, true];
  List tabBarList = ["Home", "Promo", "Orders", "Chat"];
  int tabBarIndex = 0;
  int balance = 0; 

  @override
  Widget build(BuildContext context) {

    Widget tabBarItem(int index) {
      return Expanded(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.all(5),
              height: 30,
              decoration: BoxDecoration(
                color: (tabBarIndex == index) ? MyColors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(100)
              ),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    tabBarIndex = index; 
                  });
                },
                child: Center(
                  child: Text(
                    tabBarList[index], 
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: (tabBarIndex == index) ? MyColors.darkGreen : MyColors.white, 
                      fontSize: MyFontSize.large1, 
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
              )
            ),
            if (tabBarBadgetList[index])  
            Align(
              alignment: Alignment.topRight,
              child: Container(
                height:20,
                width: 20,
                decoration: BoxDecoration(
                  color: MyColors.red,
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                    color: MyColors.white,
                    width: 1.5,
                  )
                ),
                child: Center(
                  child: Container(
                    height: 4,
                    width: 4,
                    decoration: BoxDecoration(
                      color: MyColors.white,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ),
              ),
            ) , 
          ],
        ),
      );
    }

    Widget tabBar() {
      return Container(
        margin: EdgeInsets.only(bottom: 15, top: 12),
        width: double.infinity,
        height: 40,
        decoration: BoxDecoration(
          color: MyColors.darkGreen,
          borderRadius: BorderRadius.circular(100)
        ),
        child: Row(
          children: [
            tabBarItem(0),
            tabBarItem(1),
            tabBarItem(2),
            tabBarItem(3),
          ],
        ),
      );
    }

    Widget searchBox() {
      return Row(
        children: [
          Expanded(
            child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height:50,
                      decoration: BoxDecoration(
                        color: MyColors.whiteL2,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: MyColors.softGrey,
                          width: 1.5,
                        )
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.search, color: MyColors.blackText, size: 40,), 
                          SizedBox(width: 10,),
                          Expanded(
                            child: Text(
                              "Find Services, food, & purpose",
                              style: TextStyle(
                                color: MyColors.grey, 
                                fontSize: MyFontSize.medium2
                              ),
                            ),
                          ),
                        ],
                      )
              ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(1000),
            child: Image.network(
                              "https://media-exp1.licdn.com/dms/image/C5603AQGxgoPhbjJ-zA/profile-displayphoto-shrink_800_800/0/1626605196325?e=1636588800&v=beta&t=DUQpTML6VubCKWq5Y8hnvUWvaIHylfgmK7fZFptqt7c", 
                              height: 60,
                              width: 60,
                              fit: BoxFit.cover,
                            ),
          )
        ],
      );
                
    }
    
    Widget balance() {
      return Container(
        margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
        height: 150,
        decoration: BoxDecoration(
          color: MyColors.blue,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ... List.generate(2, (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 13, vertical: 5),
              height: 18,
              width: 5,
              decoration: BoxDecoration(
                // ignore: unrelated_type_equality_checks
                color: (balance == index) ? MyColors.white : MyColors.softGrey, 
                borderRadius: BorderRadius.circular(20)
              ),
            ), )
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              height: 90,
              width: 150,
              decoration: BoxDecoration(
                color: MyColors.white, 
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 16,
                        width: 18,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://i.playboard.app/p/AATXAJxgYALqQCC9e1RxWaRYiG9h9XO2J_sKgWJDZSif/default.jpg')
                            ),
                        ),
                      ),
                      SizedBox(width: 3,),
                      Container(
                        child: Text(
                          "Gopay", 
                          style: TextStyle(
                            color: MyColors.blackText, 
                            fontSize: MyFontSize.large1, 
                            fontWeight: FontWeight.bold, 
                          ),
                        ),
                      ),  
                      
                    ],
                  ), 
                  SizedBox(width: 8,), 
                   Text(
                        "Rp1.000", 
                        style: TextStyle(
                          color: MyColors.blackText, 
                          fontSize: MyFontSize.medium1,
                        ),
                      ),
                  SizedBox(width: 5,), 
                  Text(
                    "Tap for history ", 
                    style: TextStyle(
                      color: MyColors.green,
                      fontSize: MyFontSize.medium1, 
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ), 
            SizedBox(width: 5,),
            Expanded(
              child: CustomButtonIcon(
                action: () {},
                iconPath: "assets/images/ic_bayar.png",
                text: "Pay",
                fontColor: MyColors.white,
                height: 33,
                width: 33,
                isBold: true,
              ),
            ), 
            Expanded(
              child: CustomButtonIcon(
                action: () {},
                iconPath: "assets/images/ic_topup.png",
                text: "Top Up",
                fontColor: MyColors.white,
                height: 33,
                width: 33,
                isBold: true,
              ),
            ),
            Expanded(
              child: CustomButtonIcon(
                action: () {},
                iconPath: "assets/images/ic_eksplor.png",
                text: "Explore",
                fontColor: MyColors.white,
                height: 33,
                width: 33,
                isBold: true,
              ),
            ),
            SizedBox(width: 10,), 
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.green,
        title: tabBar()
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          searchBox(),
          balance(),
          SizedBox(height: 20,), 
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CardGoClub(),
          )
          
        ],
      ),
    );
  }
}