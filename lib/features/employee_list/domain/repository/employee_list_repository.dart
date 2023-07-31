import 'package:employees/features/employee_list/data/models/employee_list_model.dart';

abstract class EmployeeListRepository {
  Future<List<EmployeeList>> getEmployees();
}
