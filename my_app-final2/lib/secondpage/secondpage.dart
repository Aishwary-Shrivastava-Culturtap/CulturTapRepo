import 'package:flutter/material.dart';
import 'page2/star.dart';
import 'page2/form.dart';

class Secondpage extends StatelessWidget {
  Secondpage({Key? key, required this.title}) : super(key: key);
  final String title;
  var screenHeight = 0.0, screenWidth = 0.0;

  @override
  Widget build(BuildContext context) {
    thumbnail(h) => Center(
          // padding:
          //     const EdgeInsets.fromLTRB(100 * 0.13, 100 * 0.05, 100 * 0.13, 0),
          child: Image(
            image: AssetImage(
              'img/2/car.png',
            ),
            height: 400,
            // width: 2,
          ),
        );

    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      // resizeToAvoidBottomInset: true,//use this
      appBar: AppBar(
        centerTitle: true,

        leadingWidth: 110,
        // centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        leading: Container(
            // padding: const EdgeInsets.fromLTRB(26, 10, 0, 0),
            child: Row(

              mainAxisAlignment:MainAxisAlignment.center ,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "<",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                TextButton(
                  child: Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            )
 
 
            ),
 

        toolbarHeight: 105,
        elevation: 0.00,

        title: Image.asset('img/1/logo.png', 
        // fit: BoxFit.cover,
         height: 48.75,
            width: 156,
        ),
      ),

      body: Container(
          color: Color.fromARGB(255, 255, 255, 255),
          child: SingleChildScrollView(

            // bott
            child: Column(
              children: [
                thumbnail(screenHeight),
                ratings,
                MyCustomForm(),
              ],
            ),
          )
 
          ),
    );
  }
}



// NOTE

// 

// Most of the time we use MaterialPageRoute to navigate between pages/screens, but at times when we want more control to add things like custom transitions, then we can use PageRouteBuilder.