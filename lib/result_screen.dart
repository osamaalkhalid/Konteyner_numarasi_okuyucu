import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String text;

  ResultScreen({ required this.text});

  @override
  Widget build(BuildContext context) {
  //  String result = text.replaceAll(RegExp(' +'), ' *');
    List<String> arr = [];
    List<String> list = text.split(new RegExp(r" "));
    for(int i=0;i<=13;i++){

      arr.add(text[i]);

    }
    var stringList = arr.join("");
    return Scaffold(

      appBar: AppBar(
        title: const Text('Sonuç'),
        backgroundColor: Colors.black54,

      ),
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Text("Kamyon Numarası :",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.fire_truck_outlined,size: 40,),
                SizedBox(width: 5,),
                Text(stringList,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),),
              ],
            ),
          )

          ],
        ),
      ),
    );
  }
}

