import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// ハードコーディングですけど、特定のドキュメントを取得するProviderを作成
final pichartProvider = FutureProvider<DocumentSnapshot>((ref) async {
  final docRef = FirebaseFirestore.instance
      .collection('pichart')
      .doc('BSuZjQmrgdad7fO4WcXy');
  return docRef.get();
});

/// [円グラフのUIを作成]
class PichartExample extends ConsumerWidget {
  const PichartExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pichart = ref.watch(pichartProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pichart'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.yellow,
                    ),
                    const SizedBox(width: 10),
                    const Text('通勤時間'),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.purple,
                    ),
                    const SizedBox(width: 10),
                    const Text('睡眠'),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.red,
                    ),
                    const SizedBox(width: 10),
                    const Text('仕事'),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 10),
                    const Text('娯楽・趣味'),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      color: Colors.green,
                    ),
                    const SizedBox(width: 10),
                    const Text('運動'),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          pichart.when(
            data: (db) {
              // db.existsはドキュメントが存在するかどうかを判定するプロパティ
              if (db.exists) {
                // ドキュメントのデータを取得 (double型に変換)
                final work = (db['work'] as num).toDouble();
                final entertainment = (db['entertainment'] as num).toDouble();
                final exercise = (db['exercise'] as num).toDouble();
                final commutingTime = (db['commutingTime'] as num).toDouble();
                final sleep = (db['sleep'] as num).toDouble();
                // 円グラフのセクションを作成
                final sections = [
                  PieChartSectionData(
                    color: Colors.red,
                    value: work,
                    showTitle: true,
                    titleStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  PieChartSectionData(
                    color: Colors.blue,
                    value: entertainment,
                    showTitle: true,
                    titleStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  PieChartSectionData(
                    color: Colors.green,
                    value: exercise,
                    showTitle: true,
                    titleStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  PieChartSectionData(
                    color: Colors.yellow,
                    value: commutingTime,
                    showTitle: true,
                    titleStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  PieChartSectionData(
                    color: Colors.purple,
                    value: sleep,
                    showTitle: true,
                    titleStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ];

                final pieChartData = PieChartData(
                  sections: sections,
                  sectionsSpace: 0, // 各セクション間のスペース
                  // その他のカスタマイズ可能なオプションをここに追加
                );

                final pieChart = SizedBox(
                    width: 250, height: 250, child: PieChart(pieChartData));

                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      pieChart,
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          ref.refresh(pichartProvider);
                          ref.invalidate(pichartProvider);
                          if (context.mounted) {
                            Navigator.of(context).pop();
                          }
                        },
                        child: const Text('戻る'),
                      ),
                    ],
                  ),
                );
              } else {
                return const Center(child: Text('データがありません。'));
              }
            },
            error: (_, __) => const Center(child: Text('Error')),
            loading: () => const Center(child: CircularProgressIndicator()),
          )
        ],
      ),
    );
  }
}
