
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oraleye/screens/home.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import '../Navbar.dart';
import '../constants.dart';

class EditProfilePage extends StatefulWidget {
  @override
  _EditProfilePageState createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  bool showPassword = false;
  double start = 30.0;
  double end = 50.0;
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  var _discreteValue=0.0;
  RangeValues ageRange = RangeValues(3, 15); // Default age range

  Map<int, String> ageLabels = {
    0: 'Below 3 years',
    3: '3-8 years',
    8: '8-15 years',
    15: '15+ years',
  }; // Age
  RangeLabels rangeLabels =RangeLabels('', '');
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    rangeLabels= RangeLabels(
      ageLabels[ageRange.start.toInt()]!,
      ageLabels[ageRange.end.toInt()]!,
    ); // // range labels
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(
       child: Padding(
         padding: const EdgeInsets.only(top:30.0),
         child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
           children: [
            // SizedBox(height: 40,),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Container(
                 width: 370,
                 height: 250,
                 child:  Container(
                   width: 150,
                   height: 70,
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         // SizedBox(height: 10,),
                         CircleAvatar(

                           radius: 50,

                           backgroundImage: NetworkImage('https://media.licdn.com/dms/image/C4E03AQHh--sPfcuB5g/profile-displayphoto-shrink_400_400/0/1599821473332?e=1681948800&v=beta&t=xwon4oATZfE95WLrcwGC_5upyKSHqYlpn3sVyA1y0g8'),

                         ),
                         Text("Hi! Lara",style: TextStyle(fontSize: 25,color: Colors.black),),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text("Welcome To",style: TextStyle(fontSize: 20,color: Colors.grey)),
                             SizedBox(width: 10,),
                             Text("OralEye",style: TextStyle(fontSize: 25,color: Colors.grey[700])),


                           ],
                         ),

                       ],
                     ),
                   ),
                 ),

               ),
             ),
             Container(
               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.only(left: 26.0,bottom: 5,top: 5),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Text('Nickname',style: TextStyle(fontSize: 15,color: Colors.grey),),
                       ],
                     ),
                   ),
                   Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(30.0),
                       side: BorderSide(
                         color: primaryColor,
                       ),
                     ),
                     child: Container(
                       width: 370,
                       height: 50,

                       child: Center(
                         child: Padding(
                           padding: const EdgeInsets.only(left:10.0),
                           child: TextFormField(
                             decoration: const InputDecoration.collapsed(
                               // icon: Icon(Icons.person),

                               hintText: ' Name here....',
                             //
                             ),
                             maxLines: 1,
                             onSaved: (String? value) {
                               // This optional block of code can be used to run
                               // code when the user saves the form.
                             },
                             validator: (String? value) {
                               return (value != null && value.contains('@')) ? 'Do not use the @ char.' : null;
                             },
                           ),
                         ),
                       ),
                     ),
                   ),
                   Padding(
                     padding: const EdgeInsets.only(left: 26.0,bottom: 5,top: 5),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Text('Gender',style: TextStyle(fontSize: 15,color: Colors.grey),),
                         SizedBox(width: 20,),

                       ],
                     ),
                   ),
                   Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(30.0),
                       side: BorderSide(
                         color: primaryColor,
                       ),
                     ),
                     child: Container(
                       width: 370,
                       height: 50,

                       child: Padding(
                         padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                         child: DropdownButtonHideUnderline(
                           child: DropdownButton<String>(
                             elevation: 0,

                             hint: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text('Select Gender....'),
                             ),

                             items: <String>['Male',
                               'Female',
                               'Wish not to Disclose',].map((String value) {
                               return DropdownMenuItem<String>(
                                 value: value,
                                 child: Text(value),
                               );
                             }).toList(),

                             onChanged: (val) {
                               genderController.value=val as TextEditingValue;

                             },
                           ),
                         ),
                       ),
                     ),
                   ),


                   Padding(
                     padding: EdgeInsets.only(left: 26.0,bottom: 5,top: 5),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.start,
                       children: [
                         Text('Age',style: TextStyle(fontSize: 15,color: Colors.grey),),
                       ],
                     ),
                   ),
                   Card(
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(30.0),
                       side: BorderSide(
                         color: primaryColor,
                       ),
                     ),
                     child: Container(
                       width: 370,
                       height: 50,

                       child: Padding(
                         padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                         child: DropdownButtonHideUnderline(
                           child: DropdownButton<String>(
                             elevation: 0,

                             hint: Padding(
                               padding: const EdgeInsets.all(8.0),
                               child: Text('Select Age Group....'),
                             ),

                             items: <String>['below 3 years',
                               '3 - 8 years',
                               '8 - 15 years ',
                             'more than 15 years '].map((String value) {
                               return DropdownMenuItem<String>(
                                 value: value,
                                 child: Text(value),
                               );
                             }).toList(),

                             onChanged: (val) {
                               genderController.value=val as TextEditingValue;

                             },
                           ),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(height: 160,),

                   GestureDetector(
                     onTap: (){
                       Navigator.pushReplacement(
                           context, MaterialPageRoute(builder: (context) => HomeScreen()));
                     },
                     child: Card(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(30.0),
                         side: BorderSide(
                           color: primaryColor,
                         ),
                       ),
                       color: primaryColor,
                       child: Container(
                         width: 370,
                         height: 50,

                         child: Padding(
                           padding: const EdgeInsets.only(left: 10.0,right: 10.0),
                           child:Center(child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 20),))
                         ),
                       ),
                     ),
                   ),


                 ],
               ),
             )


           ],
         ),
       ),
     ),
    );
  }
}