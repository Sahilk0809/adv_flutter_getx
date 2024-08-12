import 'package:adv_flutter_getx/controller/employee_management_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmployeeManagementScreen extends StatelessWidget {
  const EmployeeManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.account_circle_outlined),
        title: const Text('Employee data'),
      ),
      body: Obx(
        () {
          return ListView.builder(
            itemCount: employeeController.employeeList.length,
            itemBuilder: (context, index) => ListTile(
              leading:
                  Text(employeeController.employeeList[index].id.toString()),
              title: Text(employeeController.employeeList[index].name),
              subtitle: Text(employeeController.employeeList[index].role),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Update details'),
                          actions: [
                            inputDetails(
                              label: 'ID',
                              controller: txtId,
                            ),
                            inputDetails(
                              label: 'Name',
                              controller: txtName,
                            ),
                            inputDetails(
                              label: 'Role',
                              controller: txtRole,
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                employeeController.updateEmployeeData(index, {
                                  'id': txtId.text,
                                  'name': txtName.text,
                                  'role': txtRole.text,
                                });
                                txtName.clear();
                                txtId.clear();
                                txtRole.clear();
                                Navigator.pop(context);
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    },
                    icon: const Icon(Icons.edit),
                  ),
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: const Text('Are you sure you want to delete'),
                          content: const Text('This Action can\'t be undo'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () {
                                employeeController.removeEmployeeData(index);
                                Navigator.pop(context);
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => Form(
              key: formKey,
              child: AlertDialog(
                title: const Text('Enter details'),
                actions: [
                  inputDetails(
                    label: 'ID',
                    controller: txtId,
                  ),
                  inputDetails(
                    label: 'Name',
                    controller: txtName,
                  ),
                  inputDetails(
                    label: 'Role',
                    controller: txtRole,
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {
                      bool response = formKey.currentState!.validate();
                      if (response) {
                        employeeController.addEmployeeData({
                          'id': txtId.text,
                          'name': txtName.text,
                          'role': txtRole.text,
                        });
                        txtName.clear();
                        txtId.clear();
                        txtRole.clear();
                        Navigator.pop(context);
                      }
                    },
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  TextFormField inputDetails({
    required String label,
    required TextEditingController controller,
  }) {
    return TextFormField(
      validator: (value) {
        if (value!.isEmpty) {
          return 'Required';
        } else {
          return null;
        }
      },
      controller: controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        label: Text(label),
        labelStyle: const TextStyle(color: Colors.black),
        border: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 1,
            color: Colors.black,
          ),
        ),
        focusedBorder: const UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

GlobalKey<FormState> formKey = GlobalKey();
var txtId = TextEditingController();
var txtName = TextEditingController();
var txtRole = TextEditingController();
var txtContact = TextEditingController();
final employeeController = Get.put(EmployeeManagementController());
