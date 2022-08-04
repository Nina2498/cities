import 'package:flutter/material.dart';
class cityInfo extends StatelessWidget {
  const cityInfo({Key? key, 
  required this.imageURL,
  required this.nameCity, 
  required this.info}) : super(key: key);

  final String imageURL;
  final String nameCity;
  final String  info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
       body: Column(children: [
        Image.network(imageURL),
        Text(nameCity, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(info, style: TextStyle(fontWeight:FontWeight.normal, fontSize: 25),),
          ),
        )    
      ]),
    );
  }
}