import 'dart:convert';

import 'package:employees/features/employee_details/data/models/employee_details_model.dart';
import 'package:employees/features/employee_list/data/models/employee_list_model.dart';
import 'package:flutter/services.dart';

class Request {
  Future<List> jsonDecodeResponse() async {
    final response = await rootBundle.loadString('assets/employee.json');
    return await json.decode(response) as List<dynamic>;
  }

  Future<List<EmployeeList>> getEmployees() async {
    try {
      final list = await jsonDecodeResponse();
      return list.map((employee) => EmployeeList.fromJson(employee)).toList();
    } catch (e) {
      throw e.toString();
    }
  }

  Future<EmployeeDetails> getEmployee(String userId) async {
    try {
      final list = await jsonDecodeResponse();
      List<EmployeeDetails> employeeList =
          list.map((employee) => EmployeeDetails.fromJson(employee)).toList();
      return employeeList.singleWhere((employee) => employee.userId == userId);
    } catch (e) {
      throw e.toString();
    }
  }
}
