import 'package:flutter/material.dart';

class categoryWidget extends StatelessWidget {
String title;
String title2;
String image;
String image2;
categoryWidget({required this.title,required this.title2,required this.image,required this.image2});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image.asset(image,
                height:MediaQuery.of(context).size.height*0.16 ,
                width: double.infinity,
                fit: BoxFit.fill,),
                Container(
                  margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.02),
                  padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width*0.02,horizontal: MediaQuery.of(context).size.width*0.05),
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent.withOpacity(0.7),
                  ),
                  child: Text(title,style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          ),
          SizedBox(width: MediaQuery.of(context).size.width*0.01,),
          Expanded(
            flex: 1,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Image.asset(image2,
                  height:MediaQuery.of(context).size.height*0.16 ,
                  width: double.infinity,
                  fit: BoxFit.fill,),
                Container(
                  margin: EdgeInsets.all(MediaQuery.of(context).size.width*0.02),
                  padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.width*0.02,horizontal: MediaQuery.of(context).size.width*0.05),
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent.withOpacity(0.9),
                  ),
                  child: Text(title2,style: TextStyle(color: Colors.white),),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
