class EmployeeManagementModal {
  late String id, name, city, contact, role;

  EmployeeManagementModal({
    required this.id,
    required this.name,
    required this.role,
  });

  factory EmployeeManagementModal.fromMap(Map m1) {
    return EmployeeManagementModal(
      id: m1['id'],
      name: m1['name'],
      role: m1['role'],
    );
  }
}
