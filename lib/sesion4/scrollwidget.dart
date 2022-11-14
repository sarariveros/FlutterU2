import 'package:flutter/material.dart';

class ScrollWidgetPage extends StatefulWidget {
  const ScrollWidgetPage({super.key});

  @override
  State<ScrollWidgetPage> createState() => _ScrollWidgetPageState();
}

class _ScrollWidgetPageState extends State<ScrollWidgetPage> {
  final List<int> imageIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollControler = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollControler.addListener(() {
      if ((scrollControler.position.pixels + 500) >=
          scrollControler.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 2));
    add5();
    isLoading = false;
    setState(() {});
    if (scrollControler.position.pixels + 100 <=
        scrollControler.position.maxScrollExtent) return;
    scrollControler.animateTo(scrollControler.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  void add5() {
    final lastd = imageIds.last;
    imageIds.addAll([1, 2, 3, 4, 5].map((e) => lastd + e));
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastId = imageIds.last;
    imageIds.clear();
    imageIds.add(lastId + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Scrool Infinity'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: MediaQuery.removePadding(
          context: context,
          removeTop: true,
          removeBottom: true,
          child: Stack(
            children: [
              RefreshIndicator(
                color: Colors.amber,
                onRefresh: onRefresh,
                child: ListView.builder(
                    controller: scrollControler,
                    itemCount: imageIds.length,
                    itemBuilder: (BuildContext context, int index) {
                      return FadeInImage(
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.cover,
                        placeholder: const AssetImage('assets/giphy.gif'),
                        image: NetworkImage(
                            'https://picsum.photos/500/300?image=${imageIds[index]}'),
                      );
                    }),
              ),
              if (isLoading)
                Positioned(
                  bottom: 40,
                  left: size.width * 0.5,
                  child: const LoadingIcono(),
                )
            ],
          ),
        ),
      ),
    );
  }
}

class LoadingIcono extends StatelessWidget {
  const LoadingIcono({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 60,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(
        color: Colors.amber,
      ),
    );
  }
}
