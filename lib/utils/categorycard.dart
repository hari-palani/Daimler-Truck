import 'package:flutter/material.dart';

class CategoryCard extends StatefulWidget {
  const CategoryCard({
    super.key,
    required this.index,
    //required this.color,
    required this.icon,
    required this.text,
    //required this.textColor,
  });
  final int index;
  //final Color color;
  final String text;
  //final Color textColor;
  final IconData icon;

  @override
  State<CategoryCard> createState() => _CategoryCardState();
}

class _CategoryCardState extends State<CategoryCard> {
  List<int> arr = [1, 0, 0];
  List<Color> color = [Colors.white, Colors.black26, Colors.black26];
  List<Color> textColor = [Colors.black, Colors.white, Colors.white];

  void updateColor(int ind) {
    arr[ind] = 1;
    for (int i = 0; i < arr.length; i++) {
      if (i != ind){
          arr[i] = 0;
          color[i] = Colors.black26;
          textColor[i] = Colors.white;
      }
      
    }
    color[ind] = Colors.white;
    textColor[ind] = Colors.black;

    // for (int i = 0; i < color.length; i++) {
    //   if (i != ind) {
    //     setState(() {
    //       color[i] = Colors.black26;
    //     });
    //   }
    // }

    // for (int i = 0; i < color.length; i++) {
    //   if (i != ind) {
    //     setState(() {
    //       textColor[i] = Colors.white;
    //     });
    //   }
    // }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          updateColor(widget.index);
        });
      },
      child: Container(
        constraints: BoxConstraints.tight(const Size.fromRadius(70)),
        margin: const EdgeInsets.fromLTRB(0, 25, 10, 25),
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.hardLight,
          color: color[widget.index],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              widget.icon,
              color: Colors.yellow[800],
              size: 50,
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                widget.text,
                style: TextStyle(
                  color: textColor[widget.index],
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
