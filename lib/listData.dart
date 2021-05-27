import 'package:flutter/material.dart';

class ListData extends StatefulWidget {
  const ListData({Key key}) : super(key: key);

  @override
  _ListDataState createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  ScrollController _scrollController = ScrollController();

  List<String> _listViewData = [
    "Inducesmile.com",
    "Flutter Dev",
    "Android Dev",
    "iOS Dev!",
    "React Native Dev!",
    "React Dev!",
    "express Dev!",
    "Laravel Dev!",
    "Angular Dev!",
    "Adonis Dev!",
    "Next.js Dev!",
    "Node.js Dev!",
    "Vue.js Dev!",
    "Java Dev!",
    "C# Dev!",
    "C++ Dev!",
  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _loadMore();
      }
    });
  }

  _loadMore() {
    setState(() {
      //se estivermos no final da lista, adicione mais itens
      _listViewData..addAll(List<String>.from(_listViewData));
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Scrollbar(
          child: ListView.builder(
            itemCount: _listViewData.length,
            controller: _scrollController,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_listViewData[index]),
              );
            },
          ),
        ));
  }
}
