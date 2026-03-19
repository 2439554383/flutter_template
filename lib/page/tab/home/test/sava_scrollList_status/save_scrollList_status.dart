import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/base/my_color.dart';
import 'package:flutter_template/base/my_text.dart';
import 'dart:math';
final  myBucket = PageStorageBucket();
class SaveScrolllistStatus extends StatefulWidget {
  SaveScrolllistStatus({super.key});

  @override
  State<SaveScrolllistStatus> createState() => _SaveScrolllistStatusState();
}

class _SaveScrolllistStatusState extends State<SaveScrolllistStatus> with TickerProviderStateMixin {
  late TabController tabController = TabController(length: 2, vsync: this);
  int count = 0;

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(child: TabBar(tabs: [Tab(text: "Tab 1"), Tab(text: "Tab 2")],controller: tabController,)),
          Expanded(
            child: TabBarView(controller: tabController, children: [
              PageStorage(bucket: myBucket,
              child: _Tab1StateDemo()),
              item2(),
            ]),
          ),
        ],
      ),
    );
  }

  item2() {
    return GestureDetector(
      onTap: (){
        setState(() {
          count++;
        });
      },
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30.h),
          child: Text("${count}", style: MyText.w6_18.copyWith(color: mainColor),),
        ),
      ),
    );
  }
}

class _Tab1StateDemo extends StatefulWidget {
  const _Tab1StateDemo();

  @override
  State<_Tab1StateDemo> createState() => _Tab1StateDemoState();
}

class _Tab1StateDemoState extends State<_Tab1StateDemo> {
  bool swapped = false;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30.h),
      child: Column(
        children: [
          Text(
            "演示：交换两个 Stateful 子组件的位置\n"
            "无 Key：状态会跟着“位置”走\n"
            "ValueKey：状态会跟着“组件身份”走",
            textAlign: TextAlign.center,
            style: MyText.w4_12.copyWith(color: mainColor),
          ),
          SizedBox(height: 16.h),
          TextButton(
            onPressed: () => setState(() => swapped = !swapped),
            child: Text(
              swapped ? "恢复原顺序" : "交换顺序",
              style: MyText.w6_18.copyWith(color: mainColor),
            ),
          ),
          SizedBox(height: 16.h),
          Expanded(
            child: ListView(
                     key: const PageStorageKey("item0_list"),
              children: [
                Text("无 Key（会错位）", style: MyText.w6_18.copyWith(color: mainColor)),
                SizedBox(height: 8.h),
                ..._buildPair(useKeys: false),
                SizedBox(height: 24.h),
                Text("ValueKey（会复用正确的 State）", style: MyText.w6_18.copyWith(color: mainColor)),
                SizedBox(height: 8.h),
                ..._buildPair(useKeys: true),
              ],
            ),
          ),
          Expanded(
            child: ListView.separated(
              key: const PageStorageKey("item1_list"),
              itemCount: 30,
              separatorBuilder: (context, index) => SizedBox(height: 20.h),
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 50.h,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "Item $index",
                      style: MyText.w4_12.copyWith(color: mainColor),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildPair({required bool useKeys}) {
    final a = _CounterCard(
      key: useKeys ? const ValueKey("A") : null,
      title: "组件 A",
    );
    final b = _CounterCard(
      key: useKeys ? const ValueKey("B") : null,
      title: "组件 B",
    );
    final children = swapped ? [b, a] : [a, b];
    return [
      ...children.map((w) => Padding(padding: EdgeInsets.only(bottom: 12.h), child: w)),
    ];
  }
}

class _CounterCard extends StatefulWidget {
  const _CounterCard({super.key, required this.title});
  final String title;

  @override
  State<_CounterCard> createState() => _CounterCardState();
}

class _CounterCardState extends State<_CounterCard> {
  late final int stateId = Random().nextInt(99999);
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.r),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: mainColor.withAlpha(80)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              "${widget.title}  |  stateId=$stateId  |  count=$count",
              style: MyText.w4_12.copyWith(color: mainColor),
            ),
          ),
          TextButton(
            onPressed: () => setState(() => count++),
            child: Text("+1", style: MyText.w6_18.copyWith(color: mainColor)),
          ),
        ],
      ),
    );
  }
}