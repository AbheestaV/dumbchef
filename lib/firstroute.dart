import 'package:flutter/cupertino.dart';
import 'search/imagesearch.dart';
import 'search/textsearch.dart';

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('First Route'),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CupertinoButton(
              child: const Text('Search with Text'),
              onPressed: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                      builder: (context) => const TextSearchScreen()),
                );
              },
            ),
            CupertinoButton(
                child: const Text('Search with Image'),
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => const ImageSearchScreen()),
                  );
                })
          ],
        ),
      ),
    );
  }
}
