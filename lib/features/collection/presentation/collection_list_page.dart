import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/features/collection/application/fetch_love_data_stream.dart';
import 'package:ore_chans_app/features/collection/presentation/collection_detail_page.dart';
import 'package:ore_chans_app/utils/strings.dart';

class CollectionListPage extends ConsumerWidget {
  const CollectionListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(fetchLoveDataStreamProvider);
    final size = MediaQuery.of(context).size;

    return data.when(
      data: (loves) {
        return Scaffold(
          backgroundColor: const Color(0xffFF99B1),
          appBar: AppBar(
            title: const Text(Strings.yourCollectionLabel),
            backgroundColor: const Color(0xffFF99B1),
          ),
          body: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 8,
              bottom: 32,
            ),
            child: Center(
              child: Container(
                height: size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  children: List.generate(
                    loves.length,
                    (index) => Padding(
                      padding: EdgeInsets.all(size.width / 28),
                      child: GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                CollectionDetailPage(loves[index]),
                          ),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: size.width / 3,
                              width: size.width / 3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    loves[index].avaterImage,
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              loves[index].name,
                              style: TextStyle(
                                fontSize: size.width / 28,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
      // エラーが発生した場合はエラーを表示
      error: (_, __) => const Center(child: Text('エラーが発生しました')),
      // データが取得できるまでローディングを表示
      loading: () => const Center(child: CircularProgressIndicator()),
    );
  }
}
