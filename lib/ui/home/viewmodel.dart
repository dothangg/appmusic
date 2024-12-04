import 'dart:async';

import 'package:music_app1/data/repository/repository.dart';

import '../../data/model/song.dart';

class MusicApp1ViewModel {
  StreamController<List<Song>> songStream = StreamController();

  void loadSongs() {
    final repository = DefaultRepository();
    repository.loadData().then((value) => songStream.add(value!));
  }
}