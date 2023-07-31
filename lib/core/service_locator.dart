import 'package:employees/core/request.dart';
import 'package:employees/features/employee_details/data/datasource/employee_details_datasource.dart';
import 'package:employees/features/employee_details/data/datasource/employee_details_datasource_impl.dart';
import 'package:employees/features/employee_details/data/repository/employee_details_repository_impl.dart';
import 'package:employees/features/employee_details/domain/repository/employee_details_repository.dart';
import 'package:employees/features/employee_details/domain/usecase/employee_details_usecase.dart';
import 'package:employees/features/employee_list/data/datasource/employee_list_datasource_impl.dart';
import 'package:employees/features/employee_list/data/datasource/employee_list_datasource.dart';
import 'package:employees/features/employee_list/data/repository/employee_list_repository_impl.dart';
import 'package:employees/features/employee_list/domain/repository/employee_list_repository.dart';
import 'package:employees/features/employee_list/domain/usecase/employee_list_usecase.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> setupLocator() async {
  serviceLocator.registerSingleton<Request>(Request());
  //Employee List
  serviceLocator.registerFactory<EmployeeListUsecase>(
    () => EmployeeListUsecase(),
  );

  serviceLocator.registerFactory<EmployeeListDataSource>(
    () => EmployeeListDataSourceImpl(),
  );

  serviceLocator.registerFactory<EmployeeListRepository>(
    () => EmpolyeeListRepositoryImpl(),
  );
  //Employee List

  //Employee Details
  serviceLocator.registerFactory<EmployeeDetailsUsecase>(
    () => EmployeeDetailsUsecase(),
  );

  serviceLocator.registerFactory<EmployeeDetailsDataSource>(
    () => EmployeeDetailsDataSourceImpl(),
  );

  serviceLocator.registerFactory<EmployeeDetailsRepository>(
    () => EmpolyeeDetailsRepositoryImpl(),
  );
  //Employee Details
}
