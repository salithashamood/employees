import 'package:employees/core/service_locator.dart';
import 'package:employees/features/employee_list/data/models/employee_list_model.dart';
import 'package:employees/features/employee_list/domain/entity/employee_list_entity.dart';
import 'package:employees/features/employee_list/domain/repository/employee_list_repository.dart';

class EmployeeListUsecase {
  final EmployeeListRepository _employeeListRepository =
      serviceLocator<EmployeeListRepository>();
  Future<List<EmployeeListEntity>> getEmployees() async {
    try {
      List<EmployeeListEntity> employeeListEntity = [];
      List<EmployeeList> employeeList =
          await _employeeListRepository.getEmployees();
      for (var employee in employeeList) {
        employeeListEntity.add(mapToEmployeeListEntity(employee));
      }
      return employeeListEntity;
    } catch (e) {
      throw e.toString();
    }
  }

  EmployeeListEntity mapToEmployeeListEntity(EmployeeList employee) {
    try {
      EmployeeListEntity employeeListEntity = EmployeeListEntity(
          employee.userId, employee.jobTitleName, employee.preferredFullName);
      return employeeListEntity;
    } catch (e) {
      throw e.toString();
    }
  }
}
