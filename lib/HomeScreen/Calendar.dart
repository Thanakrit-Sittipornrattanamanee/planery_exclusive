import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';


class Calendar extends StatelessWidget {
  const Calendar({Key? key}) : super(key: key);

  Widget build(BuildContext context) => Scaffold(

        body: ListView(
          children: [
            GFListTile(
                titleText: '5/3/2024',
                subTitleText:
                    'Sending Mockup Mobile app Project',
                icon: Icon(Icons.check_box)),
          ],
        ),
      );
}
