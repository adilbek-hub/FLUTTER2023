import 'package:rive/rive.dart';

class RiveAsset {
  RiveAsset(
    this.src, {
    required this.artboard,
    required this.stateMachinName,
    required this.title,
    this.input,
  });
  final String artboard, stateMachinName, title, src;
  late SMIBool? input;

  set setInput(SMIBool status) {
    input = status;
  }
}

List<RiveAsset> bottomNavs = [
  RiveAsset(
    'assets/animateImages/icons.riv',
    artboard: 'CHAT',
    stateMachinName: 'chat interactivity',
    title: 'search',
  ),
  RiveAsset(
    'assets/animateImages/icons.riv',
    artboard: 'CHAT',
    stateMachinName: 'chat interactivity',
    title: 'search',
  ),
  RiveAsset(
    'assets/animateImages/icons.riv',
    artboard: 'CHAT',
    stateMachinName: 'chat interactivity',
    title: 'search',
  ),
  RiveAsset(
    'assets/animateImages/icons.riv',
    artboard: 'CHAT',
    stateMachinName: 'chat interactivity',
    title: 'search',
  ),
];
