import 'package:flutter/cupertino.dart';
import 'model_info.dart';

class ProviderGlobal extends ChangeNotifier {
  // Data
  int _count = 0;
  List<ModelInfo> studentList = [];

  void incrementCount() {
    _count++;
    notifyListeners();
  }

  void setStudentList(ModelInfo modelInfo) {
    studentList.add(modelInfo);
    notifyListeners();
  }
  // Update student data at a specific index
  void updateData({required ModelInfo updateData, required int index}) {
      studentList[index] = updateData; // Use the ModelInfo object directly
      notifyListeners();
    }


  // Delete student data at a specific index
  void deleteData({required int index}) {
      studentList.removeAt(index);
      notifyListeners();
    }

  // Getters
  int getValue() {
    return _count;
  }

  List<ModelInfo> getStudentList() {
    return studentList;
  }
}
