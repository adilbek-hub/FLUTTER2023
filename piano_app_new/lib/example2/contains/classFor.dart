class Note {
  Note({required this.index, required this.asset});

  final int index;
  final String asset;
}

final List<Note> notes = [
  Note(index: 0, asset: "assets/do1.mp3"),
  Note(index: 1, asset: "assets/fa4.mp3"),
  Note(index: 2, asset: "assets/lya6.mp3"),
  Note(index: 3, asset: "assets/mi3.mp3"),
  Note(index: 4, asset: "assets/re2.mp3"),
  Note(index: 5, asset: "assets/si7.mp3"),
  Note(index: 6, asset: "assets/sol5.mp3"),
];
