import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:network_info_plus/network_info_plus.dart';

import '../constants.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  bool _showFirstCard=true;
  Future<bool> isWifiConnected() async {

    final info = NetworkInfo();

    final wifiName = await info.getWifiName()
        .then((value) => print(value.toString())); // "FooNetwork"
    final wifiBSSID = await info.getWifiBSSID(); // 11:22:33:44:55:66
    final wifiIP = await info.getWifiIP();
    print(wifiBSSID);
    // print(wifiName);
    print(wifiIP);
    return true;
  }






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
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // SizedBox(height: 60,),
            Expanded(
              flex: 1,
              child: Container(
                color: primaryColor,



                child: Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 320,
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Diagnosis Center',style: TextStyle(fontSize: 25,color: Colors.white),)
                    ],
                  )

                ),
              ),

            ),
            Expanded(
              flex: 5,
              child: Container(
                height: MediaQuery.of(context).size.height*0.7,
                child: Container(
                  child: Column(
                    children: [

                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _showFirstCard = true;
                                });
                              },

                              style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all<Size>(Size(170, 50)),
                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(18.0),
                                      bottomLeft: Radius.circular(18.0),
                                    ),
                                  ),
                                ),

                                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                    return _showFirstCard
                                        ? primaryColor
                                        : Colors.white;
                                  },
                                ),
                              ),
                              child:  Text('Upload Video',style: TextStyle(color: _showFirstCard?Colors.white:Colors.grey,fontSize: 15),)
                          ),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  _showFirstCard = false;
                                });
                              },
                              style: ButtonStyle(
                                minimumSize: MaterialStateProperty.all<Size>(Size(170, 50)),

                                shape: MaterialStateProperty.all<RoundedRectangleBorder>(

                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(18.0),
                                      bottomRight: Radius.circular(18.0),
                                    ),
                                  ),
                                ),
                                backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                    return !_showFirstCard
                                        ? primaryColor
                                        : Colors.white;
                                  },
                                ),
                              ),
                              child:  Text('Live Stream',style: TextStyle(color: !_showFirstCard?Colors.white:Colors.grey,fontSize: 15),)

                          ),
                        ],
                      ),
                      SizedBox(height: 100,),
                      Text("Procedure",style: TextStyle(fontSize: 15,color: Colors.grey),),
                      SizedBox(height: 25,),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("1) ",style: TextStyle(fontSize: 15,color: Colors.grey),),

                          Tooltip(
                            child: IconButton(icon: Image.asset(
                              'assets/images/Vector.png',

                              width: 80.0,
                              height: 80.0,
                              fit: BoxFit.cover,
                            ), onPressed: () {  },),
                            message: 'Live Stream a video of your teeths from toothbrush camera ',
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.all(20),
                            showDuration: Duration(seconds: 10),
                            decoration: BoxDecoration(
                              color: primaryColor.withOpacity(0.9),
                              borderRadius: const BorderRadius.all(Radius.circular(4)),
                            ),
                            textStyle: TextStyle(color: Colors.white),
                            preferBelow: true,
                            verticalOffset: 20,
                          ),
                          Tooltip(
                            child: IconButton(icon: Image.asset(
                              'assets/images/Vector (1).png',

                              width: 80.0,
                              height: 80.0,
                              // fit: BoxFit.cover,
                            ), onPressed: () {  },),
                            message: 'Upload a video of your teeths',
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.all(20),
                            showDuration: Duration(seconds: 10),
                            decoration: BoxDecoration(
                              color:primaryColor.withOpacity(0.9),
                              borderRadius: const BorderRadius.all(Radius.circular(4)),
                            ),
                            textStyle: TextStyle(color: Colors.white),
                            preferBelow: true,
                            verticalOffset: 20,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("2) ",style: TextStyle(fontSize: 15,color: Colors.grey),),

                          Tooltip(
                            child: IconButton(icon: Image.asset(
                              'assets/images/Group.png',

                              width: 100.0,
                              height: 100.0,
                              // fit: BoxFit.cover,
                            ), onPressed: () {  },),
                            message: 'upload the video from the app ',
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.all(20),
                            showDuration: Duration(seconds: 10),
                            decoration: BoxDecoration(
                              color: primaryColor.withOpacity(0.9),
                              borderRadius: const BorderRadius.all(Radius.circular(4)),
                            ),
                            textStyle: TextStyle(color: Colors.white),
                            preferBelow: true,
                            verticalOffset: 20,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("3) ",style: TextStyle(fontSize: 15,color: Colors.grey),),

                          Tooltip(
                            child: IconButton(icon: Image.asset(
                              'assets/images/Vector (2).png',

                              width: 100.0,
                              height: 100.0,
                              // fit: BoxFit.cover,
                            ), onPressed: () {  },),
                            message: 'video is stored in the database',
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.all(20),
                            showDuration: Duration(seconds: 10),
                            decoration: BoxDecoration(
                              color: primaryColor.withOpacity(0.9),
                              borderRadius: const BorderRadius.all(Radius.circular(4)),
                            ),
                            textStyle: TextStyle(color: Colors.white),
                            preferBelow: true,
                            verticalOffset: 20,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("4) ",style: TextStyle(fontSize: 15,color: Colors.grey),),

                          Tooltip(
                            child: IconButton(icon: Image.asset(
                              'assets/images/healthicons_doctor-female-outline.png',

                              width: 100.0,
                              height: 100.0,
                              // fit: BoxFit.cover,
                            ), onPressed: () {  },),
                            message: 'Dentist analyzes and diagnose the patients and gives KPI report',
                            padding: EdgeInsets.all(20),
                            margin: EdgeInsets.all(20),
                            showDuration: Duration(seconds: 10),
                            decoration: BoxDecoration(
                              color: primaryColor.withOpacity(0.9),
                              borderRadius: const BorderRadius.all(Radius.circular(4)),
                            ),
                            textStyle: TextStyle(color: Colors.white),
                            preferBelow: true,
                            verticalOffset: 20,
                          ),
                        ],
                      ),
                      SizedBox(height: 150,),

                      if(_showFirstCard)...[GestureDetector(
                        onTap: () async {
                          await isWifiConnected();
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
                      )]else ...[
                        Padding(
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
                                            Text("Start Live Streaming",style: TextStyle(fontSize: 24,color: Colors.white))
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
                      ],

                    ],
                  ),
                ),
              ),
            )







          ],
        )
    );
  }
}
