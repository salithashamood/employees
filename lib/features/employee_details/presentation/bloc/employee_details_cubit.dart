import 'package:bloc/bloc.dart';
import 'package:employees/core/service_locator.dart';
import 'package:employees/features/employee_details/domain/entity/employee_details_entity.dart';
import 'package:employees/features/employee_details/domain/usecase/employee_details_usecase.dart';
import 'package:meta/meta.dart';

part 'employee_details_state.dart';

class EmployeeDetailsCubit extends Cubit<EmployeeDetailsState> {
  final String userId;
  EmployeeDetailsCubit(this.userId) : super(EmployeeDetailsInitial()) {
    fetchEmployeeData();
  }

  final EmployeeDetailsUsecase _employeeDetailsUsecase =
      serviceLocator<EmployeeDetailsUsecase>();

  void fetchEmployeeData() async {
    if (state is EmployeeDetailsLoading) return;
    try {
      emit(EmployeeDetailsLoading());
      EmployeeDetailsEntity employee =
          await _employeeDetailsUsecase.getEmployee(userId);
      // ignore: unnecessary_null_comparison
      if (employee == null) {
        emit(EmployeeDetailsFailier('User not found'));
      } else {
        emit(EmployeeDetailsLoaded(employee));
      }
    } catch (e) {
      emit(EmployeeDetailsFailier(e.toString()));
    }
  }
}
