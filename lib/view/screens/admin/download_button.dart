/*

  Created by: Bakhromjon Polat
  Created on: May 02 2023 12:09:53
  Github:   https://github.com/BahromjonPolat
  Leetcode: https://leetcode.com/BahromjonPolat/
  LinkedIn: https://linkedin.com/in/bahromjon-polat
  Telegram: https://t.me/BahromjonPolat

  Documentation: 

*/
import 'package:certificate/blocs/download/download_bloc.dart';
import 'package:certificate/core/core.dart';
import 'package:certificate/routing/routing.dart';
import 'package:certificate/view/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DownloadBloc, DownloadState>(
      listener: (context, state) {
        AppDialog dialog = AppDialog(context);
        state.map(
          initial: (value) {},
          loading: (value) {},
          failure: (value) {},
          success: (value) {
            dialog.show(
              title: 'Fayl yuklandi',
              content: 'Falyni ochishni xohlaysimi?',
              onYesPressed: () {
                Uri url = Uri.parse(value.filePath);
                launchUrl(
                  url,
                  mode: LaunchMode.externalApplication,
                );
                AppNavigator.pop();
              },
            );
          },
        );
      },
      builder: (context, state) {
        return TextButton(
          onPressed: () {
            final downloadBloc = BlocProvider.of<DownloadBloc>(context);
            downloadBloc.add(const DownloadEvent.started());
          },
          child: state.when(
            initial: () => const Text(AppStrings.download),
            loading: () => const Text(AppStrings.loading),
            failure: (error) => const Text(AppStrings.download),
            success: (filePath) => const Text(AppStrings.download),
          ),
        );
      },
    );
  }

  onPressed(DownloadBloc downloadBloc) {
    downloadBloc.add(const DownloadEvent.started());
  }
}
