import 'package:flutter/material.dart';

import '../../../../constants/images.dart';

class HomeHeaderContent extends StatefulWidget {
  const HomeHeaderContent({Key? key}) : super(key: key);

  @override
  _HomeHeaderContentState createState() => _HomeHeaderContentState();
}

class _HomeHeaderContentState extends State<HomeHeaderContent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 435,
      width: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImagesPath.homePath),
              fit: BoxFit.fill
          )
      ),
      child: Column(
        children: [
          _appBar()
        ],
      ),
    );
  }
  AppBar _appBar(){
    return AppBar(
      title: Text("Dar El Arkam"),
      centerTitle: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      actions: [
        IconButton(onPressed: (){}, icon: Icon(Icons.menu))
      ],
    );
  }
}
