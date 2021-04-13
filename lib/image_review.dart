import 'package:flutter/material.dart';
import 'dart:io';
class ImageReview extends StatelessWidget {
  final String imagePath;

  const ImageReview({Key key, this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(imagePath);

    return Scaffold(

      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      // The image is stored as a file on the device. Use the `Image.file`
      // constructor with the given path to display the image.
      body: Stack(
        children: [
          Positioned.fill(
              child: Image.file(
                File(imagePath),
                fit: BoxFit.fill,)
          ),
          Positioned(
            bottom: 80,
            right: 10,
            child: Column(
              children: [
                Container(
                  height: 50,
                  child: IconButton(
                      onPressed: () {},
                      color: Colors.white,
                      icon: Icon(Icons.share,size: 30,)),
                ),
                SizedBox(height: 14,),

                Container(
                  height: 50,
                  child: IconButton(
                      onPressed: () {},
                      color: Colors.white,
                      icon: Icon(Icons.text_fields,size: 30)),
                ),
                SizedBox(height: 14,),
                Container(
                  height: 50,
                  child: IconButton(
                      onPressed: () {},
                      color: Colors.white,
                      icon: Icon(Icons.arrow_downward,size: 30)),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
