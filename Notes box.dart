import 'package:anotes/screens/Addnote.dart';
import 'package:flutter/material.dart';

class Notebox extends StatelessWidget {
  final String noteTitle;
  final String notedescription;
  const Notebox({
    this.noteTitle,
    this.notedescription,
  });
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery. of(context). size. height;
    double width = MediaQuery. of(context). size. width;
    return Container(
      child: GestureDetector(
        onTap: (){
         //On tap functionality
        },
        child: TweenAnimationBuilder(
          duration: Duration(milliseconds: 800),
          tween:Tween<double>(begin: 0,end: notedescription.length>120?250.0:notedescription.length>60?170.0:120.0),
          builder: (_,double value,__){
            return Opacity(
              opacity: 0.7,
              child: Container(
                  height: value,
                  padding: EdgeInsets.all(10),
                  margin: EdgeInsets.only(left: 18),
                  decoration: BoxDecoration(
                      color: Colors.green[300].withOpacity(0.6),
                      borderRadius: BorderRadius.circular(15)),
                  child: Stack(
                    children: [
                      Text(
                        noteTitle,
                        maxLines: 2,
                        style: TextStyle(fontSize: width*0.045, color:Colors.black,fontWeight: FontWeight.bold),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: noteTitle.length>10?60:40),
                          child: Text(
                            '${notedescription}',
                            maxLines: 9,
                            style: TextStyle(
                                fontSize: width*0.035,
                                color: Colors.black87,
                                fontWeight:FontWeight.w500,
                            ),
                          )),
                    ],
                  )),
            );
          }
        ),
      ),
    );
  }
}