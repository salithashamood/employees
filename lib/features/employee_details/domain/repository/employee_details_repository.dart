import 'package:employees/features/employee_details/data/models/employee_details_model.dart';

abstract class EmployeeDetailsRepository {
  Future<EmployeeDetails> getEmployee(String userId);
}
