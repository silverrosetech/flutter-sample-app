import 'package:flutter/material.dart';

class HorizontalListview extends StatelessWidget {
  const HorizontalListview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,

        children: [
        Categories(image_location: "images/newheader.png", image_caption: "Rice"),
          Categories(image_location: "images/newheader.png", image_caption: "Beans"),
          Categories(image_location: "images/newheader.png", image_caption: "Egusi"),
          Categories(image_location: "images/newheader.png", image_caption: "Spaghetti"),
        ],
      ),
    );
  }
}
class Categories extends StatelessWidget {
final String image_location;
final String image_caption;

  const Categories({super.key, required this.image_location, required this.image_caption});


  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(2.0),
    child: InkWell(
      onTap: (){},
      child: Container(
        width: 100.0,
        child: ListTile(
          title: Image.asset(image_location,width: 100.0,
          height: 80.0,
          ),
          subtitle: Container(
            alignment: Alignment.topCenter,
            child: Text(image_caption),
          ),
        ),
      ),
    ),
    );
  }
}
