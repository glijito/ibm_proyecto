import 'package:flutter/material.dart';
import 'package:ibm_proyecto/theme/app_theme.dart';

class ListViewBuilderSreen extends StatefulWidget {
  const ListViewBuilderSreen({super.key});

  @override
  State<ListViewBuilderSreen> createState() => _ListViewBuilderSreenState();
}

class _ListViewBuilderSreenState extends State<ListViewBuilderSreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      if (scrollController.position.pixels + 500 >=
          scrollController.position.maxScrollExtent) {
        fetchData();
      }
    });
  }

  void add5Images() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});
    await Future.delayed(Duration(seconds: 3));
    add5Images();
    isLoading = false;
    setState(() {});

    if (scrollController.position.pixels + 100 >=
        scrollController.position.maxScrollExtent) {
      scrollController.animateTo(scrollController.position.pixels + 120,
          duration: Duration(milliseconds: 300), curve: Curves.fastOutSlowIn);
    }
  }

  Future<void> onRefresh() async {
    await Future.delayed(Duration(seconds: 2));
    final lastId = imagesIds.last;
    imagesIds.clear();
    imagesIds.add(lastId + 1);
    add5Images();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(children: [
          RefreshIndicator(
            color: AppTheme.primary,
            onRefresh: onRefresh,
            child: ListView.builder(
                controller: scrollController,
                itemCount: imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                      placeholder: const AssetImage('assets/jar-loading.gif'),
                      image: NetworkImage(
                          'https://picsum.photos/500/300/?random=${imagesIds[index]}'));
                }),
          ),
          if (isLoading)
            Positioned(
                bottom: 40, left: size.width * 0.5 - 30, child: _LoadingIcon())
        ]),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9), shape: BoxShape.circle),
      child: CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
