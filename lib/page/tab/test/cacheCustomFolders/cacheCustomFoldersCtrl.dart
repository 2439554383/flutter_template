import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class Cachecustomfoldersctrl extends GetxController{

  void onSelectFiles() async {
    final res = await FilePicker.pickFiles(allowMultiple: true);
    if(res == null) return ;
    final file = res.files.first;
    print("旧文件路径${file.path}");
    File newFile = await saveFile(file);
    print("新文件路径${newFile.path}");
    // await OpenFile.open(newFile.path);
    // print("已打开新文件");
     final folder = await getApplicationDocumentsDirectory();
     File txtFile = File("${folder.path}/mytxxxaaxxxt.txt");
     await writeFiles("txt",txtFile);
     await OpenFile.open(txtFile.path);
  }

  saveFile(PlatformFile file) async {
    final folder = await getApplicationDocumentsDirectory();
    final newFile = File("${folder.path}/${file.name}");
    return File(file.path!).copy(newFile.path);
  }

  writeFiles(String type,File file) async {
    if(type == "txt"){
        await file.writeAsString("contents");
        print("写入成功");
        return;
    }
  }
}