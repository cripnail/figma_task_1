import 'package:flutter/material.dart';

class CryptoList extends StatelessWidget {
  final titles = [
    "Yesterday",
    "Sell DOT",
    "Sell DOT",
    "Buy BTC",
    "Sell DOT",
    "Monday",
    "Sell DOT",
    "Sell DOT",
    "Sell DOT",
    "Sell DOT",
    "Wednesday",
    "Sell DOT",
    "Sell DOT",
    "Thursday, Dec 9, 2021",
    "Sell DOT",
    "Sell DOT",
    "Sell DOT",
    "Wednesday, Dec 8, 2021",
    "Sell DOT",
  ];
  final subtitles = [
    "",
    "1/24/2022",
    "1/24/2022",
    "1/24/2022",
    "1/24/2022",
    "",
    "1/24/2022",
    "1/24/2022",
    "1/24/2022",
    "1/24/2022",
    "",
    "1/24/2022",
    "1/24/2022",
    "",
    "1/24/2022",
    "1/24/2022",
    "1/24/2022",
    "",
    "1/24/2022",
  ];
  final icons = [
    null,
    Icons.remove_circle_outline,
    Icons.remove_circle_outline,
    Icons.control_point,
    Icons.remove_circle_outline,
    null,
    Icons.remove_circle_outline,
    Icons.remove_circle_outline,
    Icons.remove_circle_outline,
    Icons.remove_circle_outline,
    null,
    Icons.remove_circle_outline,
    Icons.remove_circle_outline,
    null,
    Icons.remove_circle_outline,
    Icons.remove_circle_outline,
    Icons.remove_circle_outline,
    null,
    Icons.remove_circle_outline,
  ];
  final trailings = [
    "",
    "- 10.00 DOT \n - 189.2 USD",
    "- 10.00 DOT \n - 189.2 USD",
    "+ 1.00 BTC \n + 44,978.25 USD",
    "- 10.00 DOT \n - 189.2 USD",
    "",
    "- 10.00 DOT \n - 189.2 USD",
    "- 10.00 DOT \n - 189.2 USD",
    "- 10.00 DOT \n - 189.2 USD",
    "- 10.00 DOT \n - 189.2 USD",
    "",
    "- 10.00 DOT \n - 189.2 USD",
    "- 10.00 DOT \n - 189.2 USD",
    "",
    "- 10.00 DOT \n - 189.2 USD",
    "- 10.00 DOT \n - 189.2 USD",
    "- 10.00 DOT \n - 189.2 USD",
    "",
    "- 10.00 DOT \n - 189.2 USD",
  ];

  CryptoList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (BuildContext context, int index) =>
            const Divider(height: 0.2),
        itemCount: titles.length,
        itemBuilder: (context, index) {
          return Container(
            padding: index == 0 ||
                    index == 5 ||
                    index == 10 ||
                    index == 13 ||
                    index == 17
                ? const EdgeInsets.only(top: 0)
                : const EdgeInsets.only(top: 14),
            height: index == 0 ||
                    index == 5 ||
                    index == 10 ||
                    index == 13 ||
                    index == 17
                ? 47
                : 85,
            color: index == 0 ||
                    index == 5 ||
                    index == 10 ||
                    index == 13 ||
                    index == 17
                ? Colors.white70
                : Colors.white,
            child: ListTile(
              title: Text(
                titles[index],
                style: const TextStyle(fontSize: 20.0),
              ),
              subtitle: Text(subtitles[index]),
              leading: Icon(icons[index],
                  size: 40.0,
                  color: index == 3 ? Colors.green : Colors.deepOrange),
              trailing: Text(
                trailings[index],
                textAlign: TextAlign.end,
                style: const TextStyle(fontSize: 20.0),
              ),
            ),
          );
        });
  }
}
