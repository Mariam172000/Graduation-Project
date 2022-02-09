import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
 final List<String> imageList=[
"assets/Images/download(1).jpeg",
  "assets/Images/download(2).jpeg" ,
   "assets/Images/download(3).jpeg",
   "assets/Images/download(4).jpeg",


 ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        leading: Icon(
          Icons.menu,
        ),
        title: Text(
          'Image Slider Page',
          style: TextStyle(
            color: Colors.white,
            fontWeight:FontWeight.bold,
            fontSize: 25.0,
            fontStyle:FontStyle.italic,

          ),
        ),
        actions: [

          Icon(
            Icons.search,
          ),
        ],
      ),
      body: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              enlargeCenterPage: true,
              enableInfiniteScroll: false,
              autoPlay: true,

            ),
            items:imageList.map((e) => ClipRect(
              borderRadius:BorderRadius.circular(8),
              child: Stack(
                fit: StackFit.expand,
                children:<Widget> [
                  Image.network(e,
                    width: 1000,
                    height: 200,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            )).toList(),

          ),


        ],

      ),




    );
  }
}
