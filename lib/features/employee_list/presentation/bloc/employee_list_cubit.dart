import 'package:bloc/bloc.dart';
import 'package:employees/core/service_locator.dart';
import 'package:employees/features/employee_list/domain/entity/employee_list_entity.dart';
import 'package:employees/features/employee_list/domain/usecase/employee_list_usecase.dart';
import 'package:meta/meta.dart';

part 'employee_list_state.dart';

class EmployeeListCubit extends Cubit<EmployeeListState> {
  EmployeeListCubit() : super(EmployeeListInitial()) {
    fetchData();
  }

  final EmployeeListUsecase _employeeListUsecase =
      serviceLocator<EmployeeListUsecase>();

  void fetchData() async {
    if (state is EmployeeListLoading) return;
    try {
      emit(EmployeeListLoading());
      List<EmployeeListEntity> empolyees =
          await _employeeListUsecase.getEmployees();
      emit(EmployeeListLoaded(empolyees));
    } catch (e) {
      emit(EmployeeListFailier(e.toString()));
    }
  }
}
