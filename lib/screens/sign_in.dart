import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => StateSignIn();
}

class StateSignIn extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Flex(direction: Axis.vertical, children: [
      Expanded(
          flex: 2,
          child: Container(child: Image.asset("assets/signing_img.png"))),
      Expanded(
          flex: 2,
          child: Container(
              child: Column(
            children: [
              Container(
                child: const Text('Get your groceries', style: TextStyle(
                  fontSize: 26,
                    color: Color.fromRGBO(3, 3, 3,1),
                    fontWeight: FontWeight.bold
                ))
              ),
              Container(
                  child: const Text('with nectar', style: TextStyle(
                      fontSize: 26,
                      color: Color.fromRGBO(3, 3, 3,1),
                      fontWeight: FontWeight.bold
                  ))
              )
            ],
          )))
    ]));
  }

}
