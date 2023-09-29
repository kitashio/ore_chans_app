import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/firebase/src/features/post_crud_app/application/post_provider.dart';

import '../../../../sample/widget_cookbook/ui/stepper/model/tracker.dart';

// Firestoreのtrackerコレクションをリアルタイムに取得するProvider
final trackStreamProvider = StreamProvider.autoDispose<List<Tracker>>((ref) {
  final snapshot = ref.watch(fireStoreProvider).collection('tracker').snapshots();
  return snapshot.map((query) => query.docs.map((doc) {
    final data = doc.data();
    return Tracker.fromJson(data);
  }).toList());
});

class TrackerPage extends ConsumerStatefulWidget {
  const TrackerPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TrackerPageState();
}

class _TrackerPageState extends ConsumerState<TrackerPage> {
  int _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    final trackers = ref.watch(trackStreamProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('トラックの現在地 Stf')),
      body: trackers.when(
        data: (trackersList) {
          return Stepper(
            currentStep: _currentStep,
            onStepContinue: () {
              if (_currentStep < trackersList.length - 1) {
                setState(() {
                  _currentStep += 1;
                });
              }
            },
            onStepCancel: () {
              if (_currentStep > 0) {
                setState(() {
                  _currentStep -= 1;
                });
              }
            },
            steps: trackersList.map((tracker) => Step(
                  title: Column(
                    children: [
                      Text(tracker.location),// 現在地を表示
                      Text(''),// 到着時刻を表示
                    ],
                  ),
                  content: Container(),
                )).toList(),
          );
        },
        error: (_, __) => const Center(child: Text('エラーが発生しました')),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}


// class TrackerPage extends ConsumerWidget {
//   const TrackerPage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final trackers = ref.watch(trackStreamProvider);
//     return Scaffold(
//       appBar: AppBar(title: const Text('トラックの現在地')),
//       body: trackers.when(
//         data: (trackersList) {
//           return Stepper(
//             key: ValueKey(trackersList.length),
//             steps: trackersList.map((tracker) => Step(
//                   title: Column(
//                     children: [
//                       Text(tracker.location),
//                       Text(DateFormat('yyyy/MM/dd HH:mm').format(tracker.createdAt!)),
//                     ],
//                   ),
//                   content: Container(),
//                 )).toList(),
//           );
//         },
//         error: (_, __) => const Center(child: Text('エラーが発生しました')),
//         loading: () => const Center(child: CircularProgressIndicator()),
//       ),
//     );
//   }
// }
