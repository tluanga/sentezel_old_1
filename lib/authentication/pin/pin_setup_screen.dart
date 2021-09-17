import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sentezel/common/constants/route_constant.dart';

class PinSetupScreen extends HookConsumerWidget {
  const PinSetupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      child: SafeArea(
          child: Column(
        children: [
          Text('Hetaah hian pin entry page kha lo dah lawk mai rawh aw'),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacementNamed(RouteConstant.home);
            },
            child: Text('Submit'),
          )
        ],
      )),
    );
  }
}
