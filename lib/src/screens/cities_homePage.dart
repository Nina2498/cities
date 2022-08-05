import 'package:cities/mock/mock_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

import 'cityInfo.dart';

class CitiesHomePage extends StatelessWidget {
  const CitiesHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
        
          appBar: AppBar(
            centerTitle: true,
          
            title: Text(
              'Kurdistan Cities',
              style:TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ) ,

            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
           body:Column(
            children: [
              Container(
                color: Color.fromARGB(255, 51, 88, 151),
                height: 722,
                child: ListView.builder(
                  itemCount: listofCities.length,
                  itemBuilder: (context, index){
                  
                    return Container(
                      padding: EdgeInsets.all(10),
                      child: InkWell
                      (
                   onTap: () {
                     Navigator.of(context).push(
                                  MaterialPageRoute(builder: (context)=>cityInfo(
                                    imageURL: listofCities[index]["image"].toString(),
                                      nameCity: listofCities[index]["id"].toString(),
                                      info: listofCities[index]["text"].toString(),


                                                ),

                                                )
                     );
                   },
                            child: Stack(
                             children: <Widget>[
                             Container(
                               child: Image.network(listofCities[index]
                               ["image"].toString()),
                               height: 250,
                               width: double.infinity,
                              
                             ),

                           
                    
                    Container(
                     margin: EdgeInsets.only(top: 200),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(color: Color.fromARGB(255, 114, 118, 123),
                     borderRadius: BorderRadius.circular(35)),
                
                  child: Text(listofCities[index]["id"].toString(), 
                              style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.bold, 
                               fontSize: 24),),),
            ]
                     
                     ) )); 
                      
                  }
                )
           ),

           
 
            ]
    )));
            
          }
        }

