import 'package:employees/features/employee_details/presentation/bloc/employee_details_cubit.dart';
import 'package:employees/features/employee_details/presentation/screens/employee_details.dart';
import 'package:employees/features/employee_list/domain/entity/employee_list_entity.dart';
import 'package:employees/features/employee_list/presentation/bloc/employee_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class EmployeeList extends StatelessWidget {
  const EmployeeList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text('Employee List'),
      ),
      body: Container(
        height: 100.h,
        width: 100.w,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
        child: BlocBuilder<EmployeeListCubit, EmployeeListState>(
          builder: (context, state) {
            if (state is EmployeeListLoaded) {
              return state.employees.isEmpty
                  ? const Center(
                      child: Text(
                        'No employees',
                      ),
                    )
                  : ListView.separated(
                      separatorBuilder: (context, index) {
                        return const Divider();
                      },
                      itemCount: state.employees.length,
                      itemBuilder: (context, index) {
                        EmployeeListEntity employee = state.employees[index];
                        return ListTile(
                          key: UniqueKey(),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => BlocProvider(
                                  create: (context) =>
                                      EmployeeDetailsCubit(employee.userId),
                                  child: const EmployeeDetails(),
                                ),
                              ));
                          },
                          title: Text(
                            employee.preferredFullName,
                            style: const TextStyle(fontSize: 20),
                          ),
                          subtitle: Text(employee.jobTitleName),
                        );
                      },
                    );
            } else if (state is EmployeeListFailier) {
              return Center(
                child: Text(state.error),
              );
            } else if (state is EmployeeListLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
