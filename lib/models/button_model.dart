        import 'package:audioplayers/audioplayers.dart';
class ButtonModel {
  String name;
  String urlAsset;

  ButtonModel({required this.name, required this.urlAsset}) {
    player.setSourceAsset(urlAsset);
  }
  var player = AudioPlayer();

  Future<void> play() async {
    await player.play(AssetSource(urlAsset));
    
  }
}

List<ButtonModel> buttons = [
  ButtonModel(name: "808", urlAsset: "808.wav"),
  ButtonModel(name: "clap", urlAsset: "clap.wav"),
  ButtonModel(name: "hat", urlAsset: "hat.wav"),
  ButtonModel(name: "kick", urlAsset: "kick.wav"),
  ButtonModel(name: "perc", urlAsset: "perc.wav"),
  ButtonModel(name: "snare", urlAsset: "snare.wav"),
  ButtonModel(name: "openHats", urlAsset: "openHats.wav"),
  ButtonModel(name: "counter_snare", urlAsset: "counter_snare.wav"),
];
