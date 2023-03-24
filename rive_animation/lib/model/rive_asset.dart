import 'package:rive/rive.dart';

class RiveAsset {
  RiveAsset(
    this.src, {
    required this.artboard,
    required this.stateMachineName,
    required this.title,
    this.input,
  });
  final String artboard, stateMachineName, title, src;
  late SMIBool? input;

  set setInput(SMIBool status) {
    input = status;
  }
}

List<RiveAsset> bottomNavs = [
  RiveAsset(
    'assets/animateImages/icons.riv',
    artboard: 'CHAT',
    stateMachineName: 'CHAT_interactivity',
    title: 'Chat',
  ),
  RiveAsset(
    'assets/animateImages/icons.riv',
    artboard: 'SEARCH',
    stateMachineName: 'SEARCH_interactivity',
    title: 'Search',
  ),
  RiveAsset(
    'assets/animateImages/icons.riv',
    artboard: 'TIMER',
    stateMachineName: 'TIMER_interactivity',
    title: 'Timer',
  ),
  RiveAsset(
    'assets/animateImages/icons.riv',
    artboard: 'BELL',
    stateMachineName: 'BELL_interactivity',
    title: 'Notifications',
  ),
  RiveAsset(
    'assets/animateImages/icons.riv',
    artboard: 'USER',
    stateMachineName: 'USER_interactivity',
    title: 'profile',
  ),
];

List<RiveAsset> sideMenus = [
  RiveAsset(
    'assets/animateImages/icons.riv',
    artboard: 'HOME',
    stateMachineName: 'HOME_interactivity',
    title: 'Home',
  ),
  RiveAsset(
    'assets/animateImages/icons.riv',
    artboard: 'SEARCH',
    stateMachineName: 'SEARCH_interactivity',
    title: 'Search',
  ),
  RiveAsset(
    'assets/animateImages/icons.riv',
    artboard: 'LIKE/STAR',
    stateMachineName: 'STAR_interactivity',
    title: 'Favorites',
  ),
  RiveAsset(
    'assets/animateImages/icons.riv',
    artboard: 'CHAT',
    stateMachineName: 'CHAT_interactivity',
    title: 'Help',
  ),
];
