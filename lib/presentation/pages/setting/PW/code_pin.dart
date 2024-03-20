import 'package:flutter/material.dart';
import 'package:trackexpences/app/config/app_colors.dart';


class CodepinPage extends StatefulWidget{
  const CodepinPage ({super.key});

  @override
  State<CodepinPage> createState() => _Codepin();
  }

class _Codepin extends State<CodepinPage>{
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xffF8F8F8),
        body: SingleChildScrollView(
          reverse: true,
          child:  Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(90, 100, 80, 0),
                child: Text(
                  'Enter your Code Pin',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blueLight,
                  ),
                ),
              ),
              Form(
                  child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: SizedBox(
                            height: 64,
                            width: 68,
                            child: TextFormField(
                              maxLength: 1,
                              onSaved: (Pin1) {},
                              onChanged: (value) {
                                if (value.length == 1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              autofocus: true,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style:const TextStyle(fontSize: 18),
                              decoration:  InputDecoration(
                                counterText: "",
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: AppColors.blueLight )),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: AppColors.blue ))
                              ),
                            ),
                          ),
                        ),Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: SizedBox(
                            height: 64,
                            width: 68,
                            child: TextFormField(
                              maxLength: 1,
                              onSaved: (Pin2) {},
                              onChanged: (value) {
                                if (value.length == 1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              autofocus: true,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style:const TextStyle(fontSize: 18),
                              decoration:  InputDecoration(
                                counterText: "",
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: AppColors.blueLight )),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: AppColors.blue ))
                              ),
                            ),
                          ),
                        ),Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: SizedBox(
                            height: 64,
                            width: 68,
                            child: TextFormField(
                              maxLength: 1,
                              onSaved: (Pin3) {},
                              onChanged: (value) {
                                if (value.length == 1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              autofocus: true,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style:const TextStyle(fontSize: 18),
                              decoration:  InputDecoration(
                                counterText: "",
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: AppColors.blueLight )),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: AppColors.blue ))
                              ),
                            ),
                          ),
                        ),Padding(
                          padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: SizedBox(
                            height: 64,
                            width: 68,
                            child: TextFormField(
                              maxLength: 1,
                              onSaved: (Pin4) {},
                              onChanged: (value) {
                                if (value.length == 1){
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              autofocus: true,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style:const TextStyle(fontSize: 18),
                              decoration:  InputDecoration(
                                counterText: "",
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: AppColors.blueLight )),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: AppColors.blue ))
                              ),
                            ),
                          ),
                        ),
                      ],
                  )
              )
            ],
          ),
        ),
    );
  }
}