import 'package:employees/features/employee_list/data/models/employee_list_model.dart';

abstract class EmployeeListDataSource {
  Future<List<EmployeeList>> getEmployees();
}