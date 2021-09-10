import 'package:flutter/material.dart';
import 'package:gojek/common/MyColors.dart';
import 'package:gojek/common/MyFontSize.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<bool> tabBarBadgetList = [false, false, false, true];
  List tabBarList = ["Home", "Promo", "Orders", "Chat"];
  int tabBarIndex = 0;

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
          color: MyColors.green,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Row(
          children: [
            Column(
              children: [
                ... List.generate(2, (index) => Container(
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              height: 20,
              width: 5,
              decoration: BoxDecoration(
                color: MyColors.softGrey, 
                borderRadius: BorderRadius.circular(20)
              ),
            ), )
              ],
            ),
            Container(
              height: 110,
              width: 180,
              decoration: BoxDecoration(
                color: MyColors.white, 
                borderRadius: BorderRadius.circular(20)
              ),
            )
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
        ],
      ),
    );
  }
}