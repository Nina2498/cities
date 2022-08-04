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
                height: 710,
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
                            child: GridTile(
                             child: Image.network(listofCities[index]
                             ["image"].toString()),
                             
                    ), 
                     ) 
                     );
                  }
                )
           ),

           
 
            ]
        )));
            
          }
        }







// Container(
//         width: 300,
//         height: 300,
//         color: Colors.transparent,
//         child: ClipRRect(
//           borderRadius: BorderRadius.circular(12),
//           child: InkWell(
//             onTap: () {},
//             child: GridTile(
//               child: Image.network(listofCities[index]
//                               ["image"].toString()),
//                 fit: BoxFit.cover,
//               ),
//               footer: Container(
//                 padding: EdgeInsets.all(8),
//                 color: Colors.blue.withOpacity(.5),
//                 child: Text(
//                  listofCities[index]["id"].toString(),
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     color: Colors.white,
//                     fontSize: 24,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       )




  // child: Container(
  //               color: Color.fromARGB(255, 51, 88, 151),
  //               height: 500,
  //               child: ListView.builder(
  //                 itemCount: listofCities.length,
  //                 itemBuilder: (context, index){
                  
  //                   return Container(
  //                     padding: EdgeInsets.all(10),

  //                     child: Column(
  //                       children: [
  //                       Container(
  //                           child:Image.network(listofCities[index]
  //                             ["image"].toString()),
                          
                              
  //                         ),
  //                        Positioned(
  //                           child: InkWell(
  //                            onTap: () {
                               
                                  
                                        

  //                       child: Container(alignment: Alignment.center,
  //                        decoration: BoxDecoration(color: Color.fromARGB(255, 114, 118, 123),
  //                       borderRadius: BorderRadius.circular(35)),
  //                             child: Text(listofCities[index]["id"].toString(), 
  //                             style: TextStyle(
  //                              color: Colors.white,
  //                              fontWeight: FontWeight.bold, 
  //                              fontSize: 24),),),
  //                           )
  //                         )
  //                       ],
  //                     ),
  //                   );
  //                 }
  //                 )
  //                 )
  //                 )
  //               ]),
  //             ),
  //           );