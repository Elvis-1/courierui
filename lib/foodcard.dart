import 'package:flutter/material.dart';

Widget foodCard(String img, String title, String price){
  return Container(
    child: Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              img,
              height: 100,
            ),
            SizedBox(
              height: 8.0,
            ),
            Flexible(
                child: Text(title,
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.w600
                ),),
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
                Expanded(
                    child: Text("${price}",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22.0,

                    ),
                    ),
                    ),
                Expanded(
                    child:
                    IconButton(icon: Icon(Icons.favorite_border, color: Colors.black,),
                    onPressed: null,),
                )
              ],
            ),
          ],
        ),
      ),
    ),
  );
}