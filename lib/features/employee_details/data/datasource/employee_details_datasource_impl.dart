import 'package:employees/core/request.dart';
import 'package:employees/core/service_locator.dart';
import 'package:employees/features/employee_details/data/datasource/employee_details_datasource.dart';
import 'package:employees/features/employee_details/data/models/employee_details_model.dart';

class EmployeeDetailsDataSourceImpl extends EmployeeDetailsDataSource {
  final Request _request = serviceLocator<Request>();
  @override
  Future<EmployeeDetails> getEmployee(String userId) async {
    try {
      return await _request.getEmployee(userId);
    } catch (e) {
      throw e.toString();
    }
  }
}
