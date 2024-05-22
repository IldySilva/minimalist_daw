import 'package:audioplayers/audioplayers.dart';

class Pad {
  String name;
  String urlAsset;

  Pad({required this.name, required this.urlAsset});
  var player = AudioPlayer();

  Future<void> play() async {
    await player.play(AssetSource(urlAsset));
  }
}

List<Pad> buttons = [
  Pad(name: "808", urlAsset: "808.wav"),
  Pad(name: "clap", urlAsset: "clap.wav"),
  Pad(name: "hat", urlAsset: "hat.wav"),
  Pad(name: "kick", urlAsset: "kick.wav"),
  Pad(name: "perc", urlAsset: "perc.wav"),
  Pad(name: "snare", urlAsset: "snare.wav"),
  Pad(name: "openHats", urlAsset: "openHats.wav"),
  Pad(name: "counter_snare", urlAsset: "counter_snare.wav"),
];
