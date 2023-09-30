import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/features/post_crud_app/application/love_provider.dart';
import 'package:ore_chans_app/features/post_crud_app/presentation/view/collection_page/collection_detail_page.dart';

class CollectionListPage extends ConsumerWidget {
  const CollectionListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loves = ref.watch(loveStreamProvider);
    final size = MediaQuery.of(context).size;

    return loves.when(
      // whenメソッドで状態を監視
      data: (love) {
        // データが取得できた場合はListView.builderで表示
        return Scaffold(
          backgroundColor: const Color(0xffFF99B1),
          appBar: AppBar(
            title: const Text('あなたのコレクション'),
            backgroundColor: const Color(0xffFF99B1),
          ),
          body: Padding(
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 32),
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
                children: List.generate(love.length, (index) {
                  return Padding(
                    padding: EdgeInsets.all(size.width / 28),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  CollectionDetailPage(love[index])),
                        );
                      },
                      child: Column(
                        children: [
                          Container(
                            height: size.width / 3,
                            width: size.width / 3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                image: NetworkImage(love[index].avaterImage),
                              ),
                            ),
                          ),
                          Text(
                            love[index].name,
                            style: TextStyle(
                                fontSize: size.width / 28,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            )),
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
