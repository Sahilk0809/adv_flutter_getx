import 'package:get/get.dart';

import '../modal/employee_management_modal.dart';

class EmployeeManagementController extends GetxController {
  RxList<EmployeeManagementModal> employeeList =
      <EmployeeManagementModal>[].obs;

  void addEmployeeData(Map employee) {
    employeeList.add(
      EmployeeManagementModal.fromMap(employee),
    );
  }

  void removeEmployeeData(int index) {
    employeeList.removeAt(index);
  }

  void updateEmployeeData(int index, Map employee) {
    employeeList.removeAt(index);
    employeeList.insert(
      index,
      EmployeeManagementModal.fromMap(employee),
    );
  }
}
