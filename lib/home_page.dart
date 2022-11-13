import 'package:figma_task_1/crypto_list.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  dynamic dropDownValues = "Crypto";
  dynamic dropDownValues1 = "Crypto Sells";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'Transaction History',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 30, right: 30),
          child: DecoratedBox(
            decoration: BoxDecoration(
              //background color of dropdown button
              color: Colors.black,
              border: Border.all(color: Colors.white38, width: 1),
              //border of dropdown button
              borderRadius: BorderRadius.circular(5),
              //border radius of dropdown button
            ),
            child: DropdownButton(
              isExpanded: true,
              underline: const SizedBox(),
              value: dropDownValues,
              icon: const Padding(
                padding: EdgeInsets.only(left: 30, right: 11),
                child: Icon(Icons.keyboard_arrow_down),
              ),
              iconEnabledColor: Colors.white,
              //Icon color
              style: const TextStyle(
                  color: Colors.white, //Font color
                  fontSize: 28 //font size on dropdown button
                  ),

              dropdownColor: Colors.black,
              items: ["Crypto", "Fiat"]
                  .map(
                    (dynamic value) => DropdownMenuItem(
                      value: value,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          value,
                          style: const TextStyle(fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  )
                  .toList(),
              onChanged: (Object? newMenu) {
                setState(() {
                  dropDownValues = newMenu!;
                });
              },
            ),
          ),
        ),
        const SizedBox(height: 10.0),
        Row(children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  //background color of dropdown button
                  border: Border.all(color: Colors.white38, width: 1),
                  //border of dropdown button
                  borderRadius: BorderRadius.circular(5),
                  //border radius of dropdown button
                ),
                child: DropdownButton(
                  isExpanded: true,
                  underline: const SizedBox(),
                  value: dropDownValues1,
                  icon: const Padding(
                    padding: EdgeInsets.only(left: 30, right: 11),
                    child: Icon(Icons.keyboard_arrow_down),
                  ),
                  iconEnabledColor: Colors.white,
                  //Icon color
                  style: const TextStyle(
                      color: Colors.white, //Font color
                      fontSize: 18 //font size on dropdown button
                      ),

                  dropdownColor: Colors.black,
                  items: ["Crypto Sells", "Crypto Buys"]
                      .map(
                        (dynamic value) => DropdownMenuItem(
                          value: value,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: Text(
                              value,
                              style: const TextStyle(
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (Object? newMenu) {
                    setState(() {
                      dropDownValues1 = newMenu!;
                    });
                  },
                ),
              ),
            ),
          ),
          const SizedBox(width: 10.0),
          Container(
            padding: const EdgeInsets.all(11.0),
            margin: const EdgeInsets.only(right: 30.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: Colors.white30)),
            child: const Icon(
              Icons.wallet,
              color: Colors.white,
            ),
          ),
        ]),
        const SizedBox(height: 12.0),
        Expanded(
          child: CryptoList(),
        ),
      ]),
    );
  }
}
