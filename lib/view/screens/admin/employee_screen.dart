/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 13:04:14
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'package:certificate/blocs/employee/employee_bloc.dart';
import 'package:certificate/core/core.dart';
import 'package:common_models/common_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmployeeScreen extends StatelessWidget {
  const EmployeeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final currentEmployee = AppPref.employee;
    return Scaffold(
      appBar: AppBar(title: const Text('Employees')),
      body: BlocProvider(
        create: (_) => EmployeeBloc()..add(const EmployeeEvent.started()),
        child: BlocConsumer<EmployeeBloc, EmployeeState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const Center(child: CircularProgressIndicator()),
              failed: (error) => Center(child: Text(error)),
              success: (employees) {
                return ListView.separated(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 24.0,
                  ),
                  itemCount: employees.length,
                  separatorBuilder: (_, __) => const SizedBox(height: 10.0),
                  itemBuilder: (context, index) {
                    final employee = employees[index];
                    bool isMe = currentEmployee.id == employee.id;
                    return ListTile(
                      tileColor: isMe ? Colors.green.shade100 : null,
                      leading: CircleAvatar(child: Text('${index + 1}')),
                      title: Text(isMe ? 'You' : employee.name),
                      subtitle: Text(employee.phone),
                      onTap: () {},
                    );
                  },
                );
              },
            );
          },
          listener: (context, state) {},
        ),
      ),
    );
  }
}
