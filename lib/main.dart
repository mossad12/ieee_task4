import 'package:flutter/material.dart';
import 'package:ieeetask4/category_widget.dart';
import 'package:ieeetask4/title_widget.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
     Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.purpleAccent,
       ),
       body:  SingleChildScrollView(
         child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.all(6.0),
               child: Row(
                 children: [
                   titleCategory(title: 'الاخبار'),
                   SizedBox(width: MediaQuery.of(context).size.width*0.01,),
                   titleCategory(title: 'المجلات'),
                 ],
               ),
             ),
             categoryWidget(title:'مجله السياسة' ,image: 'assets/images/policy.jpg',
               title2:'مجله التكنولوجيا' ,image2:'assets/images/technology.jpg' ,),

             categoryWidget(title:'مجله الرياضة' ,image: 'assets/images/sport.jpg',
               title2:'مجله السياحة' ,image2:'assets/images/tourest.jpg' ,),

             categoryWidget(title:'مجله الصحة' ,image: 'assets/images/health.png',
               title2:'مجله حواء' ,image2:'assets/images/hawaa.jpg' ,),

             categoryWidget(title:'مجله الاقتصاد' ,image: 'assets/images/economy.jpg',
                 title2:'مجله السيارات' ,image2:'assets/images/cars.jpg' ,),

             categoryWidget(title:'مجله الطهي' ,image: 'assets/images/coocking.jpg',
               title2:'مجله المعرفة' ,image2:'assets/images/knowledge.jpg' ,),
           ],
         ),
       ) ,
     )
    );
  }
}