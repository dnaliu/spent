import 'package:flutter/material.dart';

class Swipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new SwipePage(),
    );
  }
}

class SwipePage extends StatefulWidget {
  State createState() => new SwipeApp();
}

class SwipeApp extends State<SwipePage> {
  Color caughtColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    Size media = MediaQuery.of(context).size;
    return Center(
      child: new Stack(
      children: <Widget>[
          DragBox(Offset(media.width/2-50, media.height/2-50), 'Box One', Colors.blueAccent),
          DragBox(Offset(media.width/2-50+10.0, media.height/2-50), 'Box Two', Colors.orange),
          DragBox(Offset(media.width/2-50+20.0, media.height/2-50), 'Box Three', Colors.lightGreen),
          Positioned(
            left: media.width/2-100,
            bottom: 0.0,
            child: DragTarget(
              onAccept: (Color color) {
                caughtColor = color;
              },
              builder: (
                  BuildContext context,
                  List<dynamic> accepted,
                  List<dynamic> rejected,
                  ) {
                return Container(
                  width: 200.0,
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: accepted.isEmpty ? caughtColor : Colors.grey.shade200,
                  ),
                  child: Center(
                    child: Text("Drag Here!"),
                  ),
                );
              },

            ),
          )
        ],
      ),
    );
  }
}

class DragBox extends StatefulWidget {
  final Offset initPos;
  final String label;
  final Color itemColor;

  DragBox(this.initPos, this.label, this.itemColor);

  @override
  DragBoxState createState() => DragBoxState();
}

class DragBoxState extends State<DragBox> {
  Offset position = Offset(0.0, 0.0);

  @override
  void initState() {
    super.initState();
    position = widget.initPos;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: position.dx,
        top: position.dy,
        child: Draggable(
          data: widget.itemColor,
          child: Container(
            width: 100.0,
            height: 100.0,
            color: widget.itemColor,
            child: Center(
              child: Text(
                widget.label,
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
          onDraggableCanceled: (velocity, offset) {
            setState(() {
              position = offset;
            });
          },
          feedback: Container(
            width: 120.0,
            height: 120.0,
            color: widget.itemColor.withOpacity(0.5),
            child: Center(
              child: Text(
                widget.label,
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.none,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ));
  }
}