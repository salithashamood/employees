part of 'employee_details_cubit.dart';

@immutable
abstract class EmployeeDetailsState {}

class EmployeeDetailsInitial extends EmployeeDetailsState {}

class EmployeeDetailsLoading extends EmployeeDetailsState {}

class EmployeeDetailsLoaded extends EmployeeDetailsState {
  final EmployeeDetailsEntity employee;
  EmployeeDetailsLoaded(this.employee);
}

class EmployeeDetailsFailier extends EmployeeDetailsState {
  final String error;
  EmployeeDetailsFailier(this.error);
}
