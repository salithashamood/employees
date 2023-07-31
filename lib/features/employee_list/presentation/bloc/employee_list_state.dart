part of 'employee_list_cubit.dart';

@immutable
abstract class EmployeeListState {}

class EmployeeListInitial extends EmployeeListState {}

class EmployeeListLoading extends EmployeeListState {}

class EmployeeListLoaded extends EmployeeListState {
  final List<EmployeeListEntity> employees;
  EmployeeListLoaded(this.employees);
}

class EmployeeListFailier extends EmployeeListState {
  final String error;
  EmployeeListFailier(this.error);
}
