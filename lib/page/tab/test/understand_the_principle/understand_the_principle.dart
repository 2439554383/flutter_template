import 'package:flutter/material.dart';

class UnderstandThePrinciple extends StatefulWidget {
  const UnderstandThePrinciple({super.key});

  @override
  State<UnderstandThePrinciple> createState() => _UnderstandThePrincipleState();
}

class _UnderstandThePrincipleState extends State<UnderstandThePrinciple> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Text("data"),
    );
    // RenderObject
    // return Container(
    //   child: Column(
    //     children: [
    //       ListView(
    //         children: [
    //           FittedBox(),
    //           Text("data"),
    //           Card()
    //         ],
    //       ),
    //       Padding(padding: padding)
    //       SliverList(delegate: delegate),
    //       RichText(text: text),
    //       CustomSingleChildLayout(delegate: delegate)
    //     ],
    //   ),
    // );
  }
}