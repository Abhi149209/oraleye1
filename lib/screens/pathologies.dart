import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Pathologies extends StatefulWidget {
  const Pathologies({Key? key}) : super(key: key);

  @override
  State<Pathologies> createState() => _PathologiesState();
}

class _PathologiesState extends State<Pathologies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


          Expanded(
            flex: 1,
            child: Container(width: MediaQuery.of(context).size.width,color:primaryColor,child: Column(

              children: [
                SizedBox(height: 10,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Icon(Icons.arrow_back,color: Colors.white,),
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Text('Pathologies',style: TextStyle(color: Colors.white,fontSize: 25),)),
                  ],
                ),
              ],
            ))

          ),
          Expanded(
            flex: 5,
            child: Container(
              height:700,
              child: ListView(
                children: [


                  // Padding(
                  //   padding: const EdgeInsets.all(12.0),
                  //   child: Card(
                  //     shape: RoundedRectangleBorder(
                  //       borderRadius: BorderRadius.circular(25.0),
                  //       side: BorderSide(
                  //         color: primaryColor,
                  //       ),
                  //     ),
                  //     child: Container(
                  //       height: 300,
                  //       width: double.infinity,
                  //       decoration: BoxDecoration(
                  //
                  //           image: DecorationImage(
                  //               fit: BoxFit.contain,
                  //               image: NetworkImage('https://midlandhealthcare.org/wp-content/uploads/2021/06/4-1.jpg'))),
                  //       child: Padding(
                  //         padding: const EdgeInsets.all(10.0),
                  //         child: Center(child: Text('A dentist, also known as a dental surgeon, is a health care professional who specializes in dentistry (the diagnosis, prevention, management, and treatment of diseases and conditions of the oral cavity and other aspects of the craniofacial complex including the temporomandibular joint).',style: TextStyle(fontSize: 15,color: Colors.white),)),
                  //       ),
                  //     ),
                  //     // margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 5.0),
                  //   ),
                  // )
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            side: BorderSide(
                              color: primaryColor,
                            ),
                          ),
                      color: primaryColor,
                      elevation: 4, // Add a shadow effect to the card
                      child: Row(
                        children: [
                          // Left side image
                          SizedBox(width: 10,),

                          CircleAvatar(

                            radius: 75,

                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQs_lWhSPYF3GsJEnSLrn0-yQTblIKEL5DuwhdCAEv2d8BE82c3Mce01ElcC3zJCkwgGco&usqp=CAU'),

                          ),
                          // Right side text
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Title text
                                  Text(
                                    'Oral Cancer',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24.0,
                                      color: Colors.white
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  // Body text
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod  as a dental surgeon, is a health care professional who sunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.',
                                    style: TextStyle(fontSize: 16.0,color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(
                          // color: primaryColor,
                          color: Colors.white
                        ),
                      ),
                      color:Colors.white,
                      elevation: 4, // Add a shadow effect to the card
                      child: Row(
                        children: [
                          // Left side image
                          SizedBox(width: 10,),

                          CircleAvatar(

                            radius: 75,

                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSITRptoXzHReX4R5wHmdcymfPyzHSXvfF46w&usqp=CAU'),

                          ),
                          // Right side text
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Title text
                                  Text(
                                  'Gum (Periodontal) Disease',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24.0,
                                        color: Colors.black
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  // Body text
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor , isore et dolore magna aliqua. Ut enim ad minim veniam.',
                                    style: TextStyle(fontSize: 16.0,color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(
                          // color: primaryColor,
                            color: Colors.white
                        ),
                      ),
                      color:Colors.white,
                      elevation: 4, // Add a shadow effect to the card
                      child: Row(
                        children: [
                          // Left side image
                          SizedBox(width: 10,),

                          CircleAvatar(

                            radius: 75,

                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGMFT8FoQvwghMBDK341S9MT4CmfwtcmDxBw&usqp=CAU'),

                          ),
                          // Right side text
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Title text
                                  Text(
                                    'Cavities (Tooth Decay)',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24.0,
                                        color: Colors.black
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  // Body text
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor , isore et dolore magna aliqua. Ut enim ad minim veniam.',
                                    style: TextStyle(fontSize: 16.0,color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(
                          // color: primaryColor,
                            color: Colors.white
                        ),
                      ),
                      color:Colors.white,
                      elevation: 4, // Add a shadow effect to the card
                      child: Row(
                        children: [
                          // Left side image
                          SizedBox(width: 10,),

                          CircleAvatar(

                            radius: 75,

                            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6uFT_JveRoHX0UWdESIZmpATejzbgNKUX9Q&usqp=CAU'),

                          ),
                          // Right side text
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Title text
                                  Text(
                                    'Oral Health Conditions',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 24.0,
                                        color: Colors.black
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  // Body text
                                  Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor , isore et dolore magna aliqua. Ut enim ad minim veniam.',
                                    style: TextStyle(fontSize: 16.0,color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}
