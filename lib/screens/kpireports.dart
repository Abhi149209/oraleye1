import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oraleye/screens/repots.dart';
import 'package:oraleye/screens/uploadvideo.dart';
import 'package:oraleye/screens/watchtutorials.dart';
import 'package:video_player/video_player.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
import '../constants.dart';
import 'drawer.dart';
class KPIReport extends StatefulWidget {
  const KPIReport({Key? key}) : super(key: key);

  @override
  State<KPIReport> createState() => _KPIReportState();
}

class _KPIReportState extends State<KPIReport> {
  List<_SalesData> data = [
    _SalesData('Jan', 35),
    _SalesData('Feb', 28),
    _SalesData('Mar', 34),
    _SalesData('Apr', 32),
    _SalesData('May', 40)
  ];
  final List<ChartData> chartData = [
    ChartData('David', 25, Color.fromRGBO(9,0,136,1)),
    ChartData('Steve', 38, Color.fromRGBO(147,0,119,1)),
    ChartData('Jack', 34, Color.fromRGBO(228,0,124,1)),
    ChartData('Others', 52, Color.fromRGBO(255,189,57,1))
  ];
  bool _showFirstCard=true;
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
                        // Card(
                        //     shape: RoundedRectangleBorder(
                        //       borderRadius: BorderRadius.circular(20.0),
                        //     ),
                        //     elevation: 5,
                        //
                        //     color:Colors.white,
                        //     child: Column(
                        //       children: [
                        //         Padding(
                        //           padding: const EdgeInsets.all(10.0),
                        //           child: Column(
                        //             children: [
                        //               Row(
                        //                 mainAxisAlignment: MainAxisAlignment.spaceAround,
                        //                 children: [
                        //                   Column(
                        //                     children: [
                        //                       IconButton(onPressed: (){}, icon: Icon(Icons.auto_graph,size: 30,),color: primaryColor,),
                        //                       Text('Visual Graph',style: TextStyle(color: Colors.black,fontSize: 15),)
                        //                     ],
                        //                   ),
                        //                   Column(
                        //
                        //                     children: [
                        //                       IconButton(onPressed: (){
                        //                         Navigator.of(context).push(MaterialPageRoute(builder: (context) => Reports()));
                        //
                        //                       }, icon: Icon(Icons.report_gmailerrorred_sharp,size: 30,),color: primaryColor,),
                        //                       Text('KPI Report',style: TextStyle(color: Colors.black,fontSize: 15),)
                        //
                        //                     ],
                        //                   ),
                        //
                        //
                        //
                        //                 ],
                        //               ),
                        //
                        //             ],
                        //           ),
                        //
                        //         )
                        //       ],
                        //     )
                        // ),

                      ],
                    ),
                  ),
                ),

              ),
            ),

            ),
      Expanded(
        flex: 2,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
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
                  child:  Text('Visual Graph',style: TextStyle(color: _showFirstCard?Colors.white:Colors.grey,fontSize: 15),)
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
                  child:  Text('KPI Reports',style: TextStyle(color: !_showFirstCard?Colors.white:Colors.grey,fontSize: 15),)

    ),
              ],
            ),
            SizedBox(height: 20),
            if (_showFirstCard) ...[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  color: Colors.white,

                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 400,
                    child:  Container(
                      width: 150,
                      height: 70,
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Colors.white30,

                                    child: Container(
                                      width: 170,
                                      height: 170,
                                      child:  Container(
                                        width: 150,
                                        height: 50,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            // mainAxisAlignment: MainAxis/Alignment.center,
                                            children: [
                                              // SizedBox(height: 10,),
                                              Expanded(
                                                  child:  SfCircularChart(
                                                      series: <CircularSeries>[
                                                        DoughnutSeries<ChartData, String>(
                                                            dataSource: chartData,
                                                            xValueMapper: (ChartData data, _) => data.x,
                                                            yValueMapper: (ChartData data, _) => data.y,
                                                            // Radius of doughnut
                                                            radius: '100%'
                                                        )
                                                      ]
                                                  )
                                              ),


                                            ],
                                          ),
                                        ),
                                      ),

                                    ),
                                  ),
                                  SizedBox(width: 8,),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Colors.white30,

                                    child: Container(
                                      width: 170,
                                      height: 170,
                                      child:  Container(
                                        width: 150,
                                        height: 50,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            // mainAxisAlignment: MainAxis/Alignment.center,
                                            children: [
                                              // SizedBox(height: 10,),
                                              Expanded(
                                                  child:  SfCircularChart(
                                                      series: <CircularSeries>[
                                                        DoughnutSeries<ChartData, String>(
                                                            dataSource: chartData,
                                                            xValueMapper: (ChartData data, _) => data.x,
                                                            yValueMapper: (ChartData data, _) => data.y,
                                                            // Radius of doughnut
                                                            radius: '100%'
                                                        )
                                                      ]
                                                  )
                                              ),


                                            ],
                                          ),
                                        ),
                                      ),

                                    ),
                                  ),

                                ],
                              ),
                              Row(
                                children: [
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Colors.white30,

                                    child: Container(
                                      width: 170,
                                      height: 170,
                                      child:  Container(
                                        width: 150,
                                        height: 50,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            // mainAxisAlignment: MainAxis/Alignment.center,
                                            children: [
                                              // SizedBox(height: 10,),
                                              Expanded(
                                                  child: SfCartesianChart(
                                                      primaryXAxis: CategoryAxis(),
                                                      series: <ChartSeries>[
                                                        RangeColumnSeries<ChartData2, String>(
                                                          dataSource: <ChartData2>[
                                                            ChartData2('Jan', 3, 9),
                                                            ChartData2('Feb', 4, 11),
                                                            ChartData2('Mar', 6, 13),
                                                            ChartData2('Apr', 9, 17),
                                                            ChartData2('May', 12, 20),
                                                          ],
                                                          xValueMapper: (ChartData2 data, _) => data.x,
                                                          lowValueMapper: (ChartData2 data, _) => data.low,
                                                          highValueMapper: (ChartData2 data, _) => data.high,
                                                        )
                                                      ]
                                                  )
                                              ),


                                            ],
                                          ),
                                        ),
                                      ),

                                    ),
                                  ),
                                  SizedBox(width: 8,),
                                  Card(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                    ),
                                    color: Colors.white30,

                                    child: Container(
                                      width: 170,
                                      height: 170,
                                      child:  Container(
                                        width: 150,
                                        height: 50,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            // mainAxisAlignment: MainAxis/Alignment.center,
                                            children: [
                                              // SizedBox(height: 10,),
                                              Expanded(
                                                  child:  SfCircularChart(
                                                      series: <CircularSeries>[
                                                        DoughnutSeries<ChartData, String>(
                                                            dataSource: chartData,
                                                            xValueMapper: (ChartData data, _) => data.x,
                                                            yValueMapper: (ChartData data, _) => data.y,
                                                            // Radius of doughnut
                                                            radius: '100%'
                                                        )
                                                      ]
                                                  )
                                              ),


                                            ],
                                          ),
                                        ),
                                      ),

                                    ),
                                  ),
                                ],
                              ),


                            ],
                          )
                      ),
                    ),

                  ),
                ),
              )
            ] else ...[
              Expanded(flex: 2,
              child: Padding(
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
              ),)
            ],
          ],
        ),
      ),






          ],
        )
    );
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}


class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
class ChartData2 {
  ChartData2(this.x, this.high, this.low);
  final String x;
  final double high;
  final double low;
}
class ChartData3 {
  ChartData3(this.x, this.high, this.low);
  final DateTime x;
  final double high;
  final double low;
}