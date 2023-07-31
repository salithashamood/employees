import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_list_model.freezed.dart';
part 'employee_list_model.g.dart';

@freezed
class EmployeeList with _$EmployeeList {
  factory EmployeeList({
    @Default('') String userId,
    @Default('') String jobTitleName,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String preferredFullName,
    @Default('') String employeeCode,
    @Default('') String region,
    @Default('') String phoneNumber,
    @Default('') String emailAddress
  }) = _EmployeeList;
  factory EmployeeList.fromJson(Map<String, Object?> json) => _$EmployeeListFromJson(json);
}