import 'package:flutter/material.dart';

class Navitem extends StatelessWidget {

  int? index;
  int? currentPosition;
  String? selectImage;
  String? unselectImage;
  GestureTapCallback? ontab;

  Navitem({ this.index,  this.currentPosition, required this.selectImage, this.unselectImage,this.ontab});



  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: ontab,
        child: Image.asset( currentPosition==index ? 'assets/icon/$selectImage' :
        'assets/icon/${unselectImage??selectImage}' ,height: 25,width: 25,));
  }
}
