import 'package:flutter/material.dart';

class UnorderList extends StatelessWidget {
  final List<String> itemlist;
  UnorderList(this.itemlist);

  @override
  Widget build(BuildContext context) {
    var list = <Widget>[];
    for (var item in itemlist){
      list.add(UnorderListItem(item));
      list.add(SizedBox(height: 5.0));
    }
    return Column(
      children: list,
    );
  }
}

class UnorderListItem extends StatelessWidget {
  final String item;
  const UnorderListItem(this.item);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          "• ",
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w800,
          ),
        ),
        Expanded(
          child: Text(
            item,
            style: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );
  }
}