import 'dart:math';

class AnimeCharacterNameGenerator {
  final List<String> names = [
    'ミク',
    'アスカ',
    'レイ',
    'ホムラ',
    'マミ',
    'サクラ',
    'ヒナタ',
    'ユノ',
    'ミサ',
    'ナミ',
    'ロビン',
    'ユキノ',
    'ユイ',
    'ミオ',
    'リン',
    'シャナ',
    'ナナリー',
    'シャーリー',
    'セツナ',
    'ミチル',
    'ホタル',
    'ミナ',
    'アミ',
    'マコト',
    'レイ',
    'ユサギ',
    'ハルカ',
    'エリ',
    'ノゾミ',
    'ニコ',
    'マキ',
    'リン',
    'ハナヨ',
    'ウミ',
    'コトリ',
    'シエリ',
    'エリザベス',
    'メイリン',
    'シャルロット',
    'シルフィー',
    'リーゼロッテ',
    'マリア',
    'ヒナギク',
    'アテネ',
    'イズミ',
    'ナギ',
    'ルカ',
    'シェリル',
    'ミネイ'
        'カナン',
    'アルファード',
    'マリア',
    'シモン',
    'ヨーコ',
    'ニア',
    'ダリア',
    'ミカサ',
    'アニ',
    'ヒストリア',
    'サシャ',
    'ハンジ',
    'ピクシス',
    'クリスタ',
    'ユミル',
    'アリサ',
    'シオ',
    'ソーマ',
    'エリナ',
    'メグミ',
    'イクミ',
    'ヒサコ',
    'アリス',
    'リョウコ',
    'マコ',
    'サツキ',
    'ノノン',
    'イラ',
    'ハルコ',
    'マミナ',
    'ユーコ',
    'ダリア',
    'イチゴ',
    'ミツル',
    'ココロ',
    'イクノ',
    'ヒロ',
    'ナナ',
    'ハチ'
  ];

  final _random = Random();

  String getRandomName() {
    return names[_random.nextInt(names.length)];
  }
}
