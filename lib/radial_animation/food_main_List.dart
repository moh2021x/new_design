import 'dart:async';
import 'package:animation_demo/list/list_animation.dart';
import 'package:animation_demo/radial_animation/Food.dart';
import 'package:animation_demo/radial_animation/food_details.dart';
import 'package:flutter/material.dart';

import 'food_tile.dart';

class FoodMenuMain extends StatefulWidget {
  FoodMenuMain({Key key}) : super(key: key);

  @override
  _FoodsMenuState createState() => new _FoodsMenuState();
}

class _FoodsMenuState extends State<FoodMenuMain> with TickerProviderStateMixin {
  Map<int, AnimationController> controllerMaps = new Map();
  Map<int, CurvedAnimation> animationMaps = new Map();

  @override
  void initState() {
    foods.forEach((Food food){
      AnimationController _controller = AnimationController(duration: Duration(milliseconds: 400), vsync: this,);
      CurvedAnimation _animation = new CurvedAnimation(parent: _controller, curve: Curves.easeIn);

      controllerMaps[food.id] = _controller;
      _controller.addStatusListener((AnimationStatus status){
        if(status == AnimationStatus.completed){
          _handleHero(food);
        }
      });
      animationMaps[food.id] = _animation;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
        decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/background_right.jpeg'), fit: BoxFit.cover),
    ),
    child: Theme(
      data: ThemeData(


      ),
      child: Scaffold(
       //   backgroundColor: Colors.white,
        body:Padding(
        padding: const EdgeInsets.only(top: 120),
         child: ListView.builder(
           itemBuilder: (context, index){
             Food food = foods[index];
             AnimationController _controller = controllerMaps[food.id];
             CurvedAnimation _animation = animationMaps[food.id];
             return FoodTile(
               food: food,
               isHeader: false,
               animation: _animation,
               onAction: () {
                 _controller.forward();
               },
             );
           },
           itemCount: foods.length,
         ),
         )
        ),
    )
        )
    );
  }

  void _handleHero(Food food) {
    AnimationController _controller = controllerMaps[food.id];
    CurvedAnimation _animation = animationMaps[food.id];
    Navigator.push(context,
        MaterialPageRoute(builder: (context){
          return FoodDetail(
            food: food,
            animation: _animation,
            onAction: () {
              Navigator.pop(context);
            },
          );
        }, fullscreenDialog: true)
    ).then((value){
      Future.delayed(Duration(milliseconds: 600)).then((v){
        _controller.reverse();
      });
    });
  }
}
