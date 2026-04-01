import 'package:flutter/material.dart';

class AutoFill extends StatefulWidget {
  const AutoFill({super.key});

  @override
  State<AutoFill> createState() => _AutoFillState();
}

class _AutoFillState extends State<AutoFill> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("自动填充"),),
          body: AutofillGroup(child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
              ),
              autofillHints: [AutofillHints.email],
            ),
                    TextField(
              decoration: InputDecoration(
                labelText: "City",
              ),
              autofillHints: [AutofillHints.addressCity],
            )
          ],
        )),
      ),
    );
  }
}