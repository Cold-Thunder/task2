import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:task2_proj/widgets/func_button.dart';
import 'package:task2_proj/widgets/number_int.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});
  @override
  State<SignIn> createState() => _StateSignIn();
}

class _StateSignIn extends State<SignIn> {
  TextEditingController numberCont = TextEditingController();

  final Country _country = Country(
      phoneCode: '880',
      countryCode: "BD",
      e164Sc: 0,
      geographic: true,
      level: 1,
      name: 'Bangladesh',
      example: 'Bangladesh',
      displayName: 'Bangladesh',
      displayNameNoCountryCode: 'BD',
      e164Key: '');

  @override
  void dispose(){
    numberCont.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark));

    return Scaffold(
        body: Container(
            color: Colors.white,
            child: Flex(direction: Axis.vertical, children: [
              Container(
                color: Colors.white70,
                child: Image.asset("assets/images/signin_img.png"),
              ),
              Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(left: 10),
                          child: const Text('Get your groceries',
                              style: TextStyle(
                                  fontSize: 26,
                                  fontFamily: 'gilroy',
                                  color: Color.fromRGBO(3, 3, 3, 1),
                                  fontWeight: FontWeight.w600))),
                      Container(
                          alignment: Alignment.centerLeft,
                          padding: const EdgeInsets.only(left: 10),
                          child: const Text('with nectar',
                              style: TextStyle(
                                  fontSize: 26,
                                  fontFamily: 'gilroy',
                                  color: Color.fromRGBO(3, 3, 3, 1),
                                  fontWeight: FontWeight.w600))),
                      Container(
                          padding: const EdgeInsets.only(top: 20, bottom: 20),
                          child: NumberInput(
                            numberCont: numberCont,
                            countryCode: _country,
                          )),
                      Expanded(
                        flex:1,
                        child: Container(
                          alignment: Alignment.center,
                          child: const Text('Or connect with social media',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(130, 130, 130, 1))))),
                      Expanded(
                        flex: 2,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                        FuncButton(
                            title: 'Continue with Google',
                            func: googleSignin,
                            icon: 'assets/images/google.svg',
                            color: const Color.fromRGBO(83, 131, 236, 1)),
                                FuncButton(
                                  title: 'Continue with Facebook',
                                  func: facebookSignin,
                                  color:const Color.fromRGBO(74, 102, 172, 1),
                                  icon: 'assets/images/facebook.svg'
                      )
                      ])),
                    ],
                  ))
            ])));
  }

  googleSignin() {
    print('google');
  }

  facebookSignin() {
    print('facebook');
  }
}
