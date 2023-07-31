// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EmployeeList _$$_EmployeeListFromJson(Map<String, dynamic> json) =>
    _$_EmployeeList(
      userId: json['userId'] as String? ?? '',
      jobTitleName: json['jobTitleName'] as String? ?? '',
      firstName: json['firstName'] as String? ?? '',
      lastName: json['lastName'] as String? ?? '',
      preferredFullName: json['preferredFullName'] as String? ?? '',
      employeeCode: json['employeeCode'] as String? ?? '',
      region: json['region'] as String? ?? '',
      phoneNumber: json['phoneNumber'] as String? ?? '',
      emailAddress: json['emailAddress'] as String? ?? '',
    );

Map<String, dynamic> _$$_EmployeeListToJson(_$_EmployeeList instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'jobTitleName': instance.jobTitleName,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'preferredFullName': instance.preferredFullName,
      'employeeCode': instance.employeeCode,
      'region': instance.region,
      'phoneNumber': instance.phoneNumber,
      'emailAddress': instance.emailAddress,
    };
