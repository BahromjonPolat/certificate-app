/*

  Created by: Bakhromjon Polat
  Created on: Apr 30 2023 17:23:41
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/

import 'package:common_models/common_models.dart';
import 'package:flutter/material.dart';

class BranchListWidget extends StatelessWidget {
  final List<BranchModel> branches;
  final ValueChanged<BranchModel>? onSelected;
  const BranchListWidget({
    super.key,
    required this.branches,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: branches.length,
      itemBuilder: (context, index) {
        BranchModel branch = branches[index];
        return ListTile(
          leading: CircleAvatar(child: Text('${index + 1}')),
          title: Text(branch.name),
          subtitle: Text(branch.address),
          onTap: onSelected != null
              ? () {
                  onSelected?.call(branch);
                }
              : null,
        );
      },
    );
  }
}
