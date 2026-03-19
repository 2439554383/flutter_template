import 'package:flutter/material.dart';

class NeonButtonPage extends StatefulWidget {
  const NeonButtonPage({super.key});

  @override
  State<NeonButtonPage> createState() => _NeonButtonPageState();
}

class _NeonButtonPageState extends State<NeonButtonPage> {
      bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    const neonColor = Color(0xFF00E5FF);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text("霓虹按钮")),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              print("点击: $isPressed");
              isPressed = !isPressed;
            });
          },
          child: AnimatedContainer(
            padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
            decoration: BoxDecoration(
              // 按下时：更透明的红色填充，配合红色霓虹阴影
              color: isPressed ? Colors.red.withOpacity(0.005) : Colors.black,
              borderRadius: BorderRadius.circular(14),
              border: Border.all(
                color: isPressed ? Colors.redAccent : neonColor,
                width: 1.2,
              ),
              boxShadow: isPressed
                  ? const [
                      BoxShadow(
                        color: Color(0x55FF0000), // 近处红色光晕
                        blurRadius: 18,
                        spreadRadius: 2,
                      ),
                      BoxShadow(
                        color: Color(0x33FF0000), // 更远处更淡的红色光晕
                        blurRadius: 32,
                        spreadRadius: 6,
                      ),
                    ]
                  : const [
                      BoxShadow(
                        color: neonColor,
                        blurRadius: 18,
                        spreadRadius: 1,
                      ),
                    ],
            ),
            duration: const Duration(milliseconds: 400),
            child: const Text(
              "NEON BUTTON",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                letterSpacing: 2,
                shadows: [
                 BoxShadow(
                  color: neonColor,
                  blurRadius: 3,
                  spreadRadius: 1,
                ),
                                 BoxShadow(
                  color: neonColor,
                  blurRadius: 6,
                  spreadRadius: 1,
                ),
                                                 BoxShadow(
                  color: neonColor,
                  blurRadius: 9,
                  spreadRadius: 1,
                ),
                                                                 BoxShadow(
                  color: neonColor,
                  blurRadius: 12,
                  spreadRadius: 1,
                ),
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}

