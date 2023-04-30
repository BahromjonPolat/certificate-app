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
import 'package:certificate/blocs/update_employee/update_employee_bloc.dart';
import 'package:certificate/core/core.dart';
import 'package:certificate/routing/routing.dart';
import 'package:certificate/view/widgets/branch_list_widget.dart';
import 'package:certificate/view/widgets/widgets.dart';
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
            final employeeBloc = BlocProvider.of<EmployeeBloc>(context);
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
                    final branch = HiveBoxes.branchBox.get(employee.branchId);
                    return BlocProvider(
                      create: (context) => UpdateEmployeeBloc(),
                      child:
                          BlocConsumer<UpdateEmployeeBloc, UpdateEmployeeState>(
                        listener: (context, state) {
                          AppSnackbar snackbar = AppSnackbar(context);
                          state.when(
                            initial: () {},
                            loading: () {},
                            success: () {
                              employeeBloc.add(const EmployeeEvent.started());
                            },
                            failed: (error) {
                              snackbar.show(content: error, isError: true);
                            },
                          );
                        },
                        builder: (ctx, state) {
                          UpdateEmployeeBloc updateEmployeeBloc =
                              BlocProvider.of(ctx);
                          return ListTile(
                            tileColor: isMe ? Colors.green.shade100 : null,
                            leading: CircleAvatar(child: Text('${index + 1}')),
                            title: Text(isMe ? 'You' : employee.name),
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(branch?.name ?? 'No branch'),
                                Text(employee.phone),
                              ],
                            ),
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  List<BranchModel> branches =
                                      HiveBoxes.branchBox.values.toList();
                                  return BranchListWidget(
                                    branches: branches,
                                    onSelected: (value) {
                                      updateEmployeeBloc.add(
                                        UpdateEmployeeEvent.started(
                                          employeeId: employee.id,
                                          branchId: value.id,
                                        ),
                                      );
                                      AppNavigator.pop();
                                    },
                                  );
                                },
                              );
                            },
                          );
                        },
                      ),
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
