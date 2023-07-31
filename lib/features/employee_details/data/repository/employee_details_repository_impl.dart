import 'package:employees/core/service_locator.dart';
import 'package:employees/features/employee_details/data/datasource/employee_details_datasource.dart';
import 'package:employees/features/employee_details/data/models/employee_details_model.dart';
import 'package:employees/features/employee_details/domain/repository/employee_details_repository.dart';

class EmpolyeeDetailsRepositoryImpl implements EmployeeDetailsRepository {
  final EmployeeDetailsDataSource _employeeDetailsDataSource =
      serviceLocator<EmployeeDetailsDataSource>();

  @override
  Future<EmployeeDetails> getEmployee(String userId) async{
    try {
      return await _employeeDetailsDataSource.getEmployee(userId);
    } catch (e) {
      throw e.toString();
    }
  }
}
