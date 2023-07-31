import 'package:employees/core/service_locator.dart';
import 'package:employees/features/employee_details/data/models/employee_details_model.dart';
import 'package:employees/features/employee_details/domain/entity/employee_details_entity.dart';
import 'package:employees/features/employee_details/domain/repository/employee_details_repository.dart';

class EmployeeDetailsUsecase {
  final EmployeeDetailsRepository _employeeDetailsRepository =
      serviceLocator<EmployeeDetailsRepository>();
  Future<EmployeeDetailsEntity> getEmployee(String userId) async {
    try {
      EmployeeDetails employeeDetails =
          await _employeeDetailsRepository.getEmployee(userId);

      return mapToEmployeeDetailsEntity(employeeDetails);
    } catch (e) {
      throw e.toString();
    }
  }

  EmployeeDetailsEntity mapToEmployeeDetailsEntity(EmployeeDetails employee) {
    try {
      EmployeeDetailsEntity employeeDetailsEntity = EmployeeDetailsEntity(
          employee.userId,
          employee.jobTitleName,
          employee.firstName,
          employee.lastName,
          employee.preferredFullName,
          employee.employeeCode,
          employee.region,
          employee.phoneNumber,
          employee.emailAddress);
      return employeeDetailsEntity;
    } catch (e) {
      throw e.toString();
    }
  }
}
