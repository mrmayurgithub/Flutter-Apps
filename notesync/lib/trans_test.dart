import 'package:flutter/material.dart';

class ContainerAnimate extends StatefulWidget {
  @override
  _ContainerAnimateState createState() => _ContainerAnimateState();
}

class _ContainerAnimateState extends State<ContainerAnimate> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<int> _animation;
  double x = 0;
  double y = 0;
  double z = 0;

  @override
  void initState() { 
    super.initState();
  //  _animation = IntTween(begin: 0,end: 1) as Animation<int>;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Transform(
          transform: Matrix4(
            1,
            0,
            0,
            0,
            0,
            1,
            0,
            0,
            0,
            0,
            1,
            0,
            0,
            0,
            0,
            1,
          )
            ..rotateX(x)
            ..rotateY(y)
            ..rotateZ(z),
          alignment: FractionalOffset.center,
          child: GestureDetector(
            onPanUpdate: (details) {
              setState(() {
                y = y - details.delta.dx / 100;
                x = x + details.delta.dy / 100;
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  //  shape: BoxShape.circle,
                  color: Colors.blue,
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(10, 10),
                      color: Colors.blue[100],
                    )
                  ]),
              height: 200.0,
              width: 200.0,
            ),
          ),
        ),
      ),
    );
  }
}
