import 'package:employees/core/service_locator.dart';
import 'package:employees/features/employee_list/presentation/bloc/employee_list_cubit.dart';
import 'package:employees/features/employee_list/presentation/screens/employee_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        title: 'Employees',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: BlocProvider<EmployeeListCubit>(
          create: (_) => EmployeeListCubit(),
          child: const EmployeeList(),
        ),
      );
    });
  }
}
