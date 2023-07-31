import 'package:employees/core/request.dart';
import 'package:employees/core/service_locator.dart';
import 'package:employees/features/employee_list/data/datasource/employee_list_datasource.dart';
import 'package:employees/features/employee_list/data/models/employee_list_model.dart';

class EmployeeListDataSourceImpl extends EmployeeListDataSource {
  final Request _request = serviceLocator<Request>();
  @override
  Future<List<EmployeeList>> getEmployees() async {
    try {
      return await _request.getEmployees();
    } catch (e) {
      throw e.toString();
    }
  }
}
