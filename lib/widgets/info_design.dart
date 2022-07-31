import 'package:flutter/material.dart';

import '../models/sellers.dart';

class InfoDesignWidget extends StatefulWidget {
  Sellers? model;
  BuildContext? context;

  InfoDesignWidget({this.context, this.model});

  @override
  State<InfoDesignWidget> createState() => _InfoDesignWidgetState();
}

class _InfoDesignWidgetState extends State<InfoDesignWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.amber,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Container(
          height: 295,
          width: MediaQuery.of(context).size.width,
          child: Column(children: [
            Divider(
              height: 4,
              thickness: 3,
              color: Colors.grey[300],
            ),
            Image.network(
              widget.model!.sellerAvatarUrl!,
              height: 220.0,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 1.0,
            ),
            Text(
              widget.model!.sellerName!,
              style: TextStyle(
                  color: Colors.cyan, fontSize: 20.0, fontFamily: "TrainOne"),
            ),
            Text(
              widget.model!.sellerEmail!,
              style: TextStyle(
                  color: Colors.grey, fontSize: 20.0, fontFamily: "TrainOne"),
            ),
            Divider(
              height: 4,
              thickness: 3,
              color: Colors.grey[300],
            ),
          ]),
        ),
      ),
    );
  }
}
