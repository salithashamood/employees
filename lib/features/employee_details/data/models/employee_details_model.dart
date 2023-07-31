import 'package:freezed_annotation/freezed_annotation.dart';

part 'employee_details_model.freezed.dart';
part 'employee_details_model.g.dart';

@freezed
class EmployeeDetails with _$EmployeeDetails {
  factory EmployeeDetails({
    @Default('') String userId,
    @Default('') String jobTitleName,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String preferredFullName,
    @Default('') String employeeCode,
    @Default('') String region,
    @Default('') String phoneNumber,
    @Default('') String emailAddress
  }) = _EmployeeDetails;
  factory EmployeeDetails.fromJson(Map<String, Object?> json) => _$EmployeeDetailsFromJson(json);
}