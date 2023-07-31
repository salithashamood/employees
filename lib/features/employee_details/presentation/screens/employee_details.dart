import 'package:employees/features/employee_details/presentation/bloc/employee_details_cubit.dart';
import 'package:employees/features/employee_details/presentation/widgets/employee_details_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeDetails extends StatelessWidget {
  const EmployeeDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EmployeeDetailsCubit, EmployeeDetailsState>(
      builder: (context, state) {
        if (state is EmployeeDetailsLoaded) {
          return Scaffold(
            appBar: AppBar(
              title: Text(state.employee.preferredFullName),
            ),
            body: Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
              child: ListView(
                children: [
                  EmployeeDetailsrow(
                      leftString: 'First Name',
                      rightString: state.employee.firstName),
                  EmployeeDetailsrow(
                      leftString: 'Last Name',
                      rightString: state.employee.lastName),
                  EmployeeDetailsrow(
                      leftString: 'Job Title',
                      rightString: state.employee.jobTitleName),
                  EmployeeDetailsrow(
                      leftString: 'Employee Code',
                      rightString: state.employee.employeeCode),
                  EmployeeDetailsrow(
                      leftString: 'Employee Address',
                      rightString: state.employee.emailAddress),
                  EmployeeDetailsrow(
                      leftString: 'Phone Number',
                      rightString: state.employee.phoneNumber),
                  EmployeeDetailsrow(
                      leftString: 'Region', rightString: state.employee.region),
                ],
              ),
            ),
          );
        } else if (state is EmployeeDetailsFailier) {
          return Scaffold(
            body: Center(
              child: Text(state.error),
            ),
          );
        } else if (state is EmployeeDetailsLoading) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          return Container();
        }
      },
    );
  }
}
