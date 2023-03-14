import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Reports extends StatefulWidget {
  const Reports({Key? key}) : super(key: key);

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // endDrawer:Drawer(
      //   backgroundColor: Color(0xFF07213c),
      //   shape: const RoundedRectangleBorder(
      //     borderRadius: BorderRadius.only(
      //         topRight: Radius.circular(20),
      //         bottomRight: Radius.circular(20),
      //       topLeft: Radius.circular(20),
      //       bottomLeft: Radius.circular(20)),
      //   ),
      //   child: Column(
      //     children: [
      //       SizedBox(height: 80,),
      //
      //     ],
      //
      //   ),
      // ),
      // endDrawer: const NavigationDrawer(),
        body:Container(
          // color: Colors.white70,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 60,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    side: BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                      color: primaryColor,
                    ),
                  ),
                  color: primaryColor,


                  child: Container(
                    width: 370,
                    height: 320,
                    child:  Container(
                      width: 150,
                      height: 70,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(

                                    radius: 50,

                                    backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQHh--sPfcuB5g/profile-displayphoto-shrink_400_400/0/1599821473332?e=1681948800&v=beta&t=xwon4oATZfE95WLrcwGC_5upyKSHqYlpn3sVyA1y0g8'),

                                  ),

                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // SizedBox(width: 8,),
                                Flexible(child: Text('Pedodontist surgeon',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,color: Colors.white),)),

                              ],

                              // Flexible(child: Text('Pediatric Dentist or Pedodontist surgeon',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.white),))
                            ),
                            Flexible(child: Text('Pediatric Dentist or Pedodontist surgeon',style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15,color: Colors.white),)),

                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF78ddaa),
                                onPrimary: Colors.white,
                                shadowColor: Colors.greenAccent,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                                minimumSize: Size(100, 30), //////// HERE
                              ),
                              onPressed: () {},
                              child: Text('Book Slot'),
                            ),
                            Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                elevation: 5,

                                color:Colors.white,
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              Column(
                                                children: [
                                                  IconButton(onPressed: (){}, icon: Icon(Icons.auto_graph,size: 30,),color: primaryColor,),
                                                  Text('Visual Graph',style: TextStyle(color: Colors.black,fontSize: 15),)
                                                ],
                                              ),
                                              Column(
                                                children: [
                                                  IconButton(onPressed: (){}, icon: Icon(Icons.report_gmailerrorred_sharp,size: 30,),color: primaryColor,),
                                                  Text('KPI Report',style: TextStyle(color: Colors.black,fontSize: 15),)

                                                ],
                                              ),



                                            ],
                                          ),

                                        ],
                                      ),

                                    )
                                  ],
                                )
                            ),

                          ],
                        ),
                      ),
                    ),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16.0,bottom: 20.0),
                child: Container(
                  height: 400,
                  child: ListView(
                    shrinkWrap: true,

                    children: [
                      Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(
                              color: primaryColor,
                            ),
                          ),
                          // elevation: 5,

                          color:Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 12,),

                                        Image.asset(
                                          'assets/images/icons8-report-card-80.png',
                                          width: 65.0,
                                          height: 65.0,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                            Text("Report 1",style: TextStyle(fontSize: 18,color: Colors.grey),),
                                            Text("Oral Malfunction degraded",style: TextStyle(fontSize:12 ,color: Colors.grey),),
                                            Text("12/02/2023",style: TextStyle(fontSize: 10,color: Colors.grey),),


                                          ],
                                        ),







                                      ],
                                    ),

                                  ],
                                ),

                              )
                            ],
                          )
                      ),
                      Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(
                              color: primaryColor,
                            ),
                          ),
                          // elevation: 5,

                          color:Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 12,),

                                        Image.asset(
                                          'assets/images/icons8-report-card-80.png',
                                          width: 65.0,
                                          height: 65.0,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                            Text("Report 2",style: TextStyle(fontSize: 18,color: Colors.grey),),
                                            Text("Oral Malfunction degraded",style: TextStyle(fontSize:12 ,color: Colors.grey),),
                                            Text("12/02/2023",style: TextStyle(fontSize: 10,color: Colors.grey),),


                                          ],
                                        ),







                                      ],
                                    ),

                                  ],
                                ),

                              )
                            ],
                          )
                      ),
                      Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(
                              color: primaryColor,
                            ),
                          ),
                          // elevation: 5,

                          color:Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 12,),

                                        Image.asset(
                                          'assets/images/icons8-report-card-80.png',
                                          width: 65.0,
                                          height: 65.0,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                            Text("Report 3",style: TextStyle(fontSize: 18,color: Colors.grey),),
                                            Text("Oral Malfunction degraded",style: TextStyle(fontSize:12 ,color: Colors.grey),),
                                            Text("12/02/2023",style: TextStyle(fontSize: 10,color: Colors.grey),),


                                          ],
                                        ),







                                      ],
                                    ),

                                  ],
                                ),

                              )
                            ],
                          )
                      ),
                      Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(
                              color: primaryColor,
                            ),
                          ),
                          // elevation: 5,

                          color:Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 12,),

                                        Image.asset(
                                          'assets/images/icons8-report-card-80.png',
                                          width: 65.0,
                                          height: 65.0,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                            Text("Report 4",style: TextStyle(fontSize: 18,color: Colors.grey),),
                                            Text("Oral Malfunction degraded",style: TextStyle(fontSize:12 ,color: Colors.grey),),
                                            Text("12/02/2023",style: TextStyle(fontSize: 10,color: Colors.grey),),


                                          ],
                                        ),







                                      ],
                                    ),

                                  ],
                                ),

                              )
                            ],
                          )
                      ),
                      Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            side: BorderSide(
                              color: primaryColor,
                            ),
                          ),
                          // elevation: 5,

                          color:Colors.white,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        SizedBox(width: 12,),

                                        Image.asset(
                                          'assets/images/icons8-report-card-80.png',
                                          width: 65.0,
                                          height: 65.0,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(width: 10,),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,

                                          children: [
                                            Text("Report 5",style: TextStyle(fontSize: 18,color: Colors.grey),),
                                            Text("Oral Malfunction degraded",style: TextStyle(fontSize:12 ,color: Colors.grey),),
                                            Text("12/02/2023",style: TextStyle(fontSize: 10,color: Colors.grey),),


                                          ],
                                        ),







                                      ],
                                    ),

                                  ],
                                ),

                              )
                            ],
                          )
                      ),


                    ],
                  ),
                ),
              ),





            ],
          ),
        )
    );;
  }
}
