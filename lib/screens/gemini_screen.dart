import 'package:flutter/material.dart';
import 'package:internship/data/data.dart';

import '../colors/colors.dart';

class GeminiScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => GeminiScreenState();
}

class GeminiScreenState extends State<GeminiScreen> {

  var isActive = 2;
  var activeDesc = descToday;

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15),
        child: Container(
          /// main container decor
          decoration: BoxDecoration(
              color: CustomColors.bgColor,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 5)]),
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                /// gemini text -------
                Center(
                  child: Text(
                    "Gemini",
                    style: TextStyle(
                        color: CustomColors.darkPurple,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),

                /// line under gemini -------
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Container(
                    height: 0.5,
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.grey),
                  ),
                ),

                /// today tomorrow and yesterday -------
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 0.5, color: Colors.grey)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            activeDesc = descYesterday;
                            isActive = 1;
                            setState(() {});
                          },
                          child: Text(
                            "Yesterday",
                            style: TextStyle(
                                color: isActive == 1
                                    ? CustomColors.darkPurple
                                    : CustomColors.fadePurple,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: double.infinity,
                          width: 0.5,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                        InkWell(
                          onTap: () {
                            activeDesc = descToday;
                            isActive = 2;
                            setState(() {});
                          },
                          child: Text(
                            "Today",
                            style: TextStyle(
                                color: isActive == 2
                                    ? CustomColors.darkPurple
                                    : CustomColors.fadePurple,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          height: double.infinity,
                          width: 0.5,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                        InkWell(
                          onTap: () {
                            isActive = 3;
                            activeDesc = descTomorrow;
                            setState(() {});
                          },
                          child: Text(
                            "Tomorrow",
                            style: TextStyle(
                                color: isActive == 3
                                    ? CustomColors.darkPurple
                                    : CustomColors.fadePurple,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        )
                      ],
                    ),
                  ),
                ),

                /// desc underneath -------
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    activeDesc.toString(),
                    style: TextStyle(
                      fontSize: 16.0 * MediaQuery.of(context).textScaleFactor,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
