import 'package:rive/rive.dart';

class RiveUtils {
  static StateMachineController getRiveController(Artboard artboard,
      // ignore: non_constant_identifier_names
      {StateMachineName = 'State Machin 1',
      required String stateMachinName}) {
    StateMachineController? controller =
        StateMachineController.fromArtboard(artboard, StateMachineName);
    artboard.addController(controller!);
    return controller;
  }
}
