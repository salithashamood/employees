import 'package:employees/core/service_locator.dart';
import 'package:employees/features/employee_list/data/datasource/employee_list_datasource.dart';
import 'package:employees/features/employee_list/data/models/employee_list_model.dart';
import 'package:employees/features/employee_list/domain/repository/employee_list_repository.dart';

class EmpolyeeListRepositoryImpl implements EmployeeListRepository {
  final EmployeeListDataSource _employeeListDataSource =
      serviceLocator<EmployeeListDataSource>();

  @override
  Future<List<EmployeeList>> getEmployees() async{
    try {
      return await _employeeListDataSource.getEmployees();
    } catch (e) {
      throw e.toString();
    }
  }
}
