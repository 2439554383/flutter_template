import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_template/base/my_color.dart';
import 'package:flutter_template/base/my_text.dart';
import 'package:flutter_template/generated/l10n.dart';
import 'package:flutter_template/page/tab/test/multi_function_table/multi_function_table_ctrl.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/state_manager.dart';

class MultiFunctionTablePage extends GetView<MultiFunctionTableCtrl> {
  MultiFunctionTablePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: MultiFunctionTableCtrl(),
      builder: (MultiFunctionTableCtrl controller) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              S.current.multiFunctionTable,
              style: MyText.w5_18.copyWith(color: blackColor),
            ),
            backgroundColor: whiteColor,
            elevation: 0,
          ),
          body: Center(
            child: Stack(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: DataTable(
                      columns: getColumns(),
                       rows: getRows(),
                       sortColumnIndex: controller.columnIndex,
                       sortAscending: controller.ascending,
                       ),
                  ),
                ),
                Align(
                  alignment: .bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 35.h),
                    width: double.infinity,
                    child: TextButton(
                      onPressed: () {},
                      child: Text("已选择${controller.selectList.length}项",style: TextStyle(color: Colors.deepPurple),),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  List<DataColumn> getColumns() {
    return List.generate(controller.titleList.length, (index) {
      final item = controller.titleList[index];
      return DataColumn(label: Text("${item}"),onSort: (columnIndex, ascending) {
        controller.onSort(columnIndex,ascending);
      },);
    });
  }

  List<DataRow> getRows() {
    return List.generate(controller.userList.length, (index) {
      final userItem = controller.userList[index];
      final cellList = [userItem.name, userItem.area, userItem.age];
      return DataRow(
        cells: List.generate(cellList.length, (index) {
          final item = cellList[index];
          final isShowEditIcon = (index == 0 || index == 1);
          void showEditDiolog() {
            controller.textEditingController.text = index == 0
                ? userItem.name
                : userItem.area;
            Get.dialog(
              AlertDialog(
                title: Text("data"),
                content: TextFormField(
                  controller: controller.textEditingController,
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Get.back();
                    },
                    child: Text("取消"),
                  ),
                  SizedBox(width: 10.w),
                  TextButton(
                    onPressed: () {
                      controller.onChangeText(userItem, index);
                    },
                    child: Text("修改"),
                  ),
                ],
              ),
            );
          }

          return DataCell(
            Text("${item}"),
            showEditIcon: isShowEditIcon,
            onTap: () {
              showEditDiolog();
            },
          );
        }),
        selected: controller.selectList.contains(userItem),
        onSelectChanged: (isSelect) {
          if (controller.selectList.contains(userItem)) {
            controller.selectList.remove(userItem);
            controller.update();
            return;
          }
          controller.selectList.add(userItem);
          controller.update();
        },
      );
    });
  }
}
