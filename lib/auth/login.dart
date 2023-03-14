import 'package:country_pickers/country.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:oraleye/Navbar.dart';
import 'package:oraleye/auth/signup.dart';
import 'package:oraleye/constants.dart';
import 'package:oraleye/screens/home.dart';
import 'package:oraleye/screens/profiledata.dart';
import 'package:country_pickers/country_pickers.dart';
class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController phoneController = TextEditingController();
  final FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> signup(BuildContext context) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);

      // Getting users credential
      UserCredential result = await auth.signInWithCredential(authCredential);
      User? user = result.user;

      if (result != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => EditProfilePage()));
      }  // if result not null we simply call the MaterialpageRoute,
      // for go to the HomePage screen
    }
  }
  List<Country> _countryList = [
    CountryPickerUtils.getCountryByIsoCode('DE'),
    CountryPickerUtils.getCountryByIsoCode('AT'),
    CountryPickerUtils.getCountryByIsoCode('CH'),
  ];
  Widget _buildDropdownItem(Country country) => Container(
    child: Row(
      children: <Widget>[
        CountryPickerUtils.getDefaultFlagImage(country),
        SizedBox(
          width: 8.0,
        ),
        Text("+${country.phoneCode}(${country.isoCode})"),
      ],
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,

      body: Container(
        color: primaryColor,
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Column(
                  children: [
                    Image.asset(
                      'assets/images/icons8-tooth-40.png',
                      width: 100.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                    Text("Hello Again!",style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                    ),),
                    SizedBox(height: 20,),
                    Text("Welcome",style: TextStyle(
                      fontSize: 15,
                      color: Colors.white70,
                    ),),
                    SizedBox(height: 30,)
                  ],
                ),
                SizedBox(height: 40,),
                //
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                  child: Container(
                    width: 360,

                    child: Row(
                      children: <Widget>[
                        CountryPickerDropdown(
                          initialValue: 'DE',
                          itemBuilder: (Country country) {
                            return Row(
                              children: [
                                SizedBox(width: 8.0),

                                CountryPickerUtils.getDefaultFlagImage(country),
                                SizedBox(width: 8.0),
                                Text(country.iso3Code),
                              ],
                            );
                          },
                          itemFilter: (country) => _countryList.contains(country),

                          onValuePicked: (Country country) {
                            print("${country.iso3Code}");
                          },
                        ),
                        Expanded(
                          child:  CupertinoTextField(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: const BorderRadius.all(Radius.circular(4))

                            ),
                            controller: phoneController,
                            clearButtonMode: OverlayVisibilityMode.editing,
                            keyboardType: TextInputType.phone,
                            maxLines: 1,
                            placeholder: 'Mobile Number',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25,),

                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height:60,
                    onPressed: (){signup(context);},
                    color:Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.phone,color: Colors.grey,),
                        SizedBox(width: 40,),

                        Text("Login using Mobile Number",style: TextStyle(
                          fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black

                        ),),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                Divider(color: Colors.white70,),
                SizedBox(height: 25,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    padding: EdgeInsets.only(top: 3,left: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),


                    ),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height:60,
                      onPressed: (){signup(context);},
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/logo.png',
                            width: 40.0,
                            height: 40.0,
                            fit: BoxFit.cover,
                          ),
                          SizedBox(width: 20,),
                          Text("Login using Google Account",style: TextStyle(
                            fontWeight: FontWeight.w600,fontSize: 16,

                          ),),
                        ],
                      ),
                    ),
                  ),
                ),





              ],

            ),
          ],
        ),
      ),
    );
  }
}
