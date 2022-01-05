import 'package:flutter/material.dart';
import 'package:uae/utills/allColors.dart';
AllColors allColors=AllColors();
class MenuWidget extends StatelessWidget {
  final Function(String) onItemClick;

  const MenuWidget({Key? key, required this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    double _heightOnly=MediaQuery.of(context).size.height;
    double _widthOnly=MediaQuery.of(context).size.width;
    return Container(
      color: allColors.drawerColor,
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: _heightOnly*0.045,
          ),
          CircleAvatar(
            radius: 65,
            backgroundColor: Colors.black,
            child: CircleAvatar(
              backgroundColor:
              allColors.normalTextColor,
              radius: 60,
              // backgroundImage: AssetImage
              //   ('assets/image/ict4.jpg'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Text(
          //   'Creator',
          //   style: TextStyle(
          //     color: Colors.teal,
          //     fontWeight: FontWeight.bold,
          //     fontSize: _widthOnly*0.04,
          //     fontFamily: 'BalsamiqSans',),
          // ),
          Align(
            alignment: Alignment.center,
            child: Text(
              '',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: allColors.normalTextColor,
                fontWeight: FontWeight.bold,
                fontSize: _widthOnly*0.06,
                fontFamily: 'BalsamiqSans',),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          sliderItem('HOME', Icons.home),
          sliderItem("TRANSLATOR", Icons.list_alt),
          sliderItem('QUIZ', Icons.local_hospital),
          sliderItem('WORDS', Icons.home_outlined),
          sliderItem('ABOUT US', Icons.account_box_outlined)
        ],
      ),
    );
  }

  Widget sliderItem(String title, IconData icons) => ListTile(
      title: Text(
        title,
        style:
        TextStyle(color: allColors.normalTextColor
            , fontSize: 20),
      ),
      leading: Icon(
        icons,
        size: 30,
        color: allColors.normalTextColor,
      ),
      onTap: () {
        onItemClick(title);
      });
}