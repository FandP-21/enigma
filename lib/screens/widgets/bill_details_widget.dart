import 'package:flutter/material.dart';

class BillWidget extends StatefulWidget {
  String item;
  String value;
  FontWeight fontWeightItem;
  FontWeight fontWeightValue;


  BillWidget(this.item, this.value, this.fontWeightItem, this.fontWeightValue);
  @override
  _BillWidgetState createState() => _BillWidgetState();
}

class _BillWidgetState extends State<BillWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.item,
              style: TextStyle(
                fontWeight: widget.fontWeightItem,
                fontSize: 12,
              ),
            ),

            Text(
              widget.value,
              style: TextStyle(
                fontWeight: widget.fontWeightValue,
                fontSize: 12,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 19,
          child: Divider(),
        ),

      ],
    );
  }
}
