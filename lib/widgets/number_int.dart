import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class NumberInput extends StatefulWidget {
  TextEditingController? numberCont;
  Country? countryCode;

  NumberInput({
    required this.numberCont,
    required this.countryCode,
    super.key,
  });

  @override
  State<NumberInput> createState()=> _NumberInputState();
}

class _NumberInputState extends State<NumberInput>{



  @override
  Widget build(BuildContext context){
    return Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        height: 39.55,
        child: TextFormField(
          controller: widget.numberCont,
          cursorColor: Colors.black,
          keyboardType: TextInputType.number,
          textAlignVertical: TextAlignVertical.center,
          onChanged: (value){
            setState((){
              widget.numberCont!.text = value;
            });
          },
          style: const TextStyle(
            height: 1.5,
            fontSize: 18,
            fontFamily: "gilroy",
            fontWeight: FontWeight.w600,
            color: Colors.black
          ),

          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            contentPadding: const EdgeInsets.only(bottom: 8),
            prefixIcon: Container(
              alignment: Alignment.center,
              margin:const EdgeInsets.only(right: 5),
              width: 70,
              child: InkWell(
                  onTap: (){
                    showCountryPicker(context: context,
                        countryListTheme: const CountryListThemeData(
                          bottomSheetHeight: 500
                        ),
                        onSelect: (value){
                      setState((){
                        widget.countryCode = value;
                      });
                    });
                  },
                  child: Text("${widget.countryCode!.flagEmoji} +${widget.countryCode!.phoneCode}", style: const TextStyle(
                      fontSize: 18,
                      fontFamily: "gilroy",
                      fontWeight: FontWeight.w600
                  ))
              )
            ),
            border: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(256,256,256, 1),

              )
            ),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(256,256,256,1)
              )
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
                color: Color.fromRGBO(256,256,256, 1)
              )
            )
          ),
        )
    );
  }
}