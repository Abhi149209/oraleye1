import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oraleye/constants.dart';
import 'package:oraleye/screens/kpireports.dart';
import 'package:oraleye/screens/pathologies.dart';
import 'package:oraleye/screens/uploadvideo.dart';
import 'package:oraleye/screens/watchtutorials.dart';
import 'package:video_player/video_player.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        key: _scaffoldKey,
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
      //   endDrawer: const NavigationDra/wer(),
      body:Container(
        // color: Colors.white70,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.only(top: 32,left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(width: 20,),

                      CircleAvatar(


                          radius: 25,

                          backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQHh--sPfcuB5g/profile-displayphoto-shrink_400_400/0/1599821473332?e=1681948800&v=beta&t=xwon4oATZfE95WLrcwGC_5upyKSHqYlpn3sVyA1y0g8'),

                      ),

                      SizedBox(width: 18,),
                      // Column(
                      //   crossAxisAlignment: CrossAxisAlignment.start,
                      //   children: [
                      //     Text("Welcome Again",style: TextStyle(fontSize: 15,color:Colors.grey)),
                      //     Text("Lara",style: TextStyle(fontSize: 25,color:Colors.black)),
                      //
                      //   ],
                      // )
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          // side: BorderSide(
                          //   color: primaryColor,
                          // ),
                        ),
                        color: Colors.white,
                        elevation: 5,

                        child: Container(
                          width: 220,
                          height: 70,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child:Row(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Welcome Again",style: TextStyle(fontSize: 15,color:Colors.grey)),
                                        Text("Lara",style: TextStyle(fontSize: 20,color:Colors.black)),

                                  ],
                                ),
                                SizedBox(width: 40,),
                                Image.asset(
                                  'assets/images/icons8-tooth-40.png',

                                  width: 30.0,
                                  height: 30.0,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
              SizedBox(width:18,),
              InkWell(
                onTap: () {
                  // add your button's functionality here
                },
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,

                  ),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: primaryColor,
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
              // In this ex/ample code, the InkWell widget is used to make the button tappable. The Container widget is used to create the blue background and give it a circular shape using the BoxDecoration with BoxShape.circle. Inside the Container, the CircleAvatar widget is



              ],
                  ),


                  // IconButton(
                  //   icon: Icon(Icons.menu,size: 50,color: Colors.white,),
                  //   onPressed: () {
                  //     _scaffoldKey.currentState?.openEndDrawer();
                  //   },
                  //   tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
                  // )
                ],
              ),
            ),
            // SizedBox(height: 20),
            GestureDetector(

              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CameraPage()));
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16.0,top: 25),
                child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    elevation: 8,


                    color: Color(0xFF1a76d2),

                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                               children: [
                                 Image.asset(
                                   'assets/images/icons8-add-camera-96.png',
                                   width: 60.0,
                                   height: 60.0,
                                   fit: BoxFit.cover,
                                 ),
                                Text("Start Diagnosis",style: TextStyle(fontSize: 24,color: Colors.white))
                                 // Icon(Icons.add),

                               ],
                              ),

                            ],
                          ),

                        )
                      ],
                    )
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27.0,top: 15),
              child: Container(
                height: 280,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [


                    Row(

                      children: [
                        // SizedBox(width: 16,),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CameraPage()));
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: BorderSide(
                                  color: primaryColor,
                                  width: 2
                              ),
                            ),
                            color: Colors.white,

                            child: Row(
                              children: [
                                Container(
                                  width: 160,
                                  height: 250,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/icons8-medical-doctor-100.png',
                                          width: 80.0,
                                          height: 80.0,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(height: 10,),
                                        Flexible(child: Text("Pedodontists",style: TextStyle(fontSize: 18,color: Colors.grey),))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => KPIReport()));
                          },
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25.0),
                              side: BorderSide(
                                  color: primaryColor,
                                  width: 2
                              ),
                            ),
                            color: Colors.white,

                            child: Row(
                              children: [
                                Container(
                                  width: 160,
                                  height: 250,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          'assets/images/icons8-report-card-80.png',
                                          width: 80.0,
                                          height: 80.0,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(height: 10,),
                                        Flexible(child: Text("Dental Reports",style: TextStyle(fontSize: 18,color: Colors.grey),))
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: BorderSide(
                                color: primaryColor,
                                width: 2
                            ),
                          ),
                          color: Colors.white,

                          child: Row(
                            children: [
                              Container(
                                width: 160,
                                height: 250,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/icons8-classroom-80.png',
                                        width: 80.0,
                                        height: 80.0,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(height: 10,),
                                      Flexible(child: Text("Tutorial",style: TextStyle(fontSize: 18,color: Colors.grey),))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(left: 25.0,top: 20),
              child: Text(
                'Upcoming Consultations ',
                textDirection: TextDirection.ltr,
                style:  GoogleFonts.montserrat(
                  textStyle: TextStyle(color: Colors.grey, letterSpacing: .5,fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 10,),

        Container(
          height: 130,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              SizedBox(width: 30,),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(
                    color: primaryColor,
                    width: 1
                  ),
                ),
                color: Colors.white,

                child: Container(
                  width: 100,
                  height: 30,
                  child:  Container(
                    width: 100,
                    height: 30,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/icons8-tooth-40.png',
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 10,),
                          Flexible(child: Text("Root Cannal",style: TextStyle(fontSize: 12,color: Colors.grey)))
                        ],
                      ),
                    ),
                  ),

                ),
              ),
              // SizedBox(width: 8,),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(
                    color: primaryColor,
                  ),
                ),
                color: Colors.white,

                child: Container(
                  width: 100,
                  height: 30,
                  child:  Container(
                    width: 100,
                    height: 30,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/icons8-medical-doctor-80.png',
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 10,),
                          Flexible(child: Text("maxillofacial surgeons",style: TextStyle(fontSize: 12,color: Colors.grey),))
                        ],
                      ),
                    ),
                  ),

                ),
              ),
              // SizedBox(width: 8,),
              GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Pathologies()));

                },
                child: Card(

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                  color: Colors.white,

                  child: Container(
                    width: 100,
                    height: 30,
                    child:  Container(
                      width: 100,
                      height: 30,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/icons8-classroom-80.png',
                              width: 40.0,
                              height: 40.0,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10,),
                            Flexible(child: Text("Pathologies",style: TextStyle(fontSize: 12,color: Colors.grey),))
                          ],
                        ),
                      ),
                    ),

                  ),
                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(
                    color: primaryColor,
                  ),
                ),
                color: Colors.white,

                child: Container(
                  width: 100,
                  height: 30,
                  child:  Container(
                    width: 100,
                    height: 30,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/icons8-dental-filling-80.png',
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 10,),
                          Flexible(child: Text("Dental Implants",style: TextStyle(fontSize: 12,color: Colors.grey),))
                        ],
                      ),
                    ),
                  ),

                ),
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  side: BorderSide(
                    color: primaryColor,
                  ),
                ),
                color: Colors.white,

                child: Container(
                  width: 100,
                  height: 30,
                  child:  Container(
                    width: 100,
                    height: 30,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/icons8-classroom-80.png',
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(height: 10,),
                          Flexible(child: Text("Tutorial",style: TextStyle(fontSize: 18,color: Colors.grey),))
                        ],
                      ),
                    ),
                  ),

                ),
              ),
            ],
          ),
        ),

            // // SizedBox(height: 10,),
            // Padding(
            //   padding: const EdgeInsets.only(left: 28.0),
            //   child: Text(
            //     'Services',
            //     textDirection: TextDirection.ltr,
            //     style:  GoogleFonts.montserrat(
            //       textStyle: TextStyle(color: Colors.grey, letterSpacing: .5,fontSize: 18),
            //     ),
            //   ),
            // ),
            //
            // Padding(
            //   padding: const EdgeInsets.only(left: 25.0,top: 10),
            //   child: Text(
            //     'Our Services',
            //     textDirection: TextDirection.ltr,
            //     style:  GoogleFonts.montserrat(
            //       textStyle: TextStyle(color: Colors.grey, letterSpacing: .5,fontSize: 18),
            //     ),
            //   ),
            // ),
            // // SizedBox(height: 10,),
            //


          ],
        ),
      )
    );
  }
}
