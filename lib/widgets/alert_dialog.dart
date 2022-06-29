import 'package:flutter/material.dart';

class AlertDialogScreen  {

  static Future<dynamic> alertDialogScreenCustom(BuildContext context , String title, 
  String routeImageCache ) {
    return showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title:   Text('${title}'),
        content: Image(image: AssetImage(routeImageCache) , width: 180,  height:180,),
        actions: <Widget>[
          Center(
            child: TextButton(
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              child: Container(
                //color: Colors.green,
                padding: const EdgeInsets.all(10),
                child: const Text("Okay"),
              ),
            ),
          ),
        ],
      ),
    );
  }
  
}
