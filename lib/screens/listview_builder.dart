import 'package:components_app/themes/theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> _imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController _scrollController = ScrollController();
  bool _isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _scrollController.addListener(() {
      print(
          '${_scrollController.position.pixels} - ${_scrollController.position.maxScrollExtent}');
      if (_scrollController.position.pixels + 500 >=
          _scrollController.position.maxScrollExtent) {
        // add5();
        fetchData();
      }
    });
  }

  void add5() {
    final lastId = _imagesIds.last;
    _imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  Future fetchData() async {
    if (_isLoading) return;

    _isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 2));

    add5();

    _isLoading = false;
    setState(() {});

    if (_scrollController.position.pixels + 50 <=
        _scrollController.position.maxScrollExtent) return;
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        duration: const Duration(seconds: 1), curve: Curves.fastOutSlowIn);
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastId = _imagesIds.last;
    _imagesIds.clear();
    _imagesIds.add(lastId + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromRGBO(73, 85, 154, 0.73),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        // removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primaryColor,
              onRefresh: onRefresh,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                controller: _scrollController,
                itemCount: _imagesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                      placeholder: AssetImage('assets/jar-loading.gif'),
                      image: NetworkImage(
                          'https://picsum.photos/500/300?image=${_imagesIds[index]}'));
                },
              ),
            ),
            if (_isLoading)
              Positioned(
                bottom: 40,
                child: LoadingIcon(),
                left: size.width * 0.5 - 30,
              )
            else
              Positioned(
                bottom: 40,
                child: Text('else!'),
                left: size.width * 0.5 - 30,
              )
          ],
        ),
      ),
    );
  }
}

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8), shape: BoxShape.circle),
      height: 60,
      width: 60,
      child: CircularProgressIndicator(
        color: AppTheme.primaryColor,
      ),
    );
  }
}
