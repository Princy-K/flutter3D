
import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {

  late Object obj;

  @override
  void initState() {
    obj = Object(fileName: "assets/obj/eyeball.obj");
    obj.rotation.setValues(0, 180, 0);
    obj.updateTransform();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Cube(
          onSceneCreated: (Scene scene) {
            scene.world.add(obj);
            scene.camera.zoom = 5;
            scene.vertexCount=2;
          },
        ),
      )
    );
  }
}
