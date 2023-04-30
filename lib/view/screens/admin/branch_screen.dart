/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 12:10:33
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:certificate/blocs/branch/branch_bloc.dart';
import 'package:common_models/common_models.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BranchScreen extends StatelessWidget {
  const BranchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Branches')),
      body: BlocProvider(
        create: (_) => BranchBloc()..add(const BranchEvent.started()),
        child: BlocConsumer<BranchBloc, BranchState>(
          builder: (context, state) {
            return state.when(
              initial: () => const SizedBox(),
              loading: () => const Center(child: CircularProgressIndicator()),
              failed: (error) => Center(child: Text(error)),
              success: (branches) {
                return ListView.builder(
                  itemCount: branches.length,
                  itemBuilder: (context, index) {
                    BranchModel branch = branches[index];
                    return ListTile(
                      leading: CircleAvatar(child: Text('${index + 1}')),
                      title: Text(branch.name),
                      subtitle: Text(branch.address),
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
