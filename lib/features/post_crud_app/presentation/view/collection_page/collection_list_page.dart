import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ore_chans_app/features/post_crud_app/presentation/view/collection_page/collection_detail_page.dart';

class CollectionListPage extends ConsumerWidget {
  const CollectionListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(title: const Text('あなたのコレクション')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
            child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            children: List.generate(10, (index) {
              return Padding(
                padding: EdgeInsets.all(size.width / 28),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CollectionDetailPage()),
                    );
                  },
                  child: Column(
                    children: [
                      Container(
                        height: size.width / 3,
                        width: size.width / 3,
                        decoration: BoxDecoration(
                          color: Colors.yellowAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Text(
                        'らぶちゃん',
                        style: TextStyle(fontSize: size.width / 28),
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
  }
}
