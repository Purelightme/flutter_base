import 'package:flutter/material.dart';

class ItemView {
  const ItemView({this.title,this.icon});
  final String title;
  final IconData icon;
}

class SelectedView extends StatelessWidget {

  const SelectedView({Key key,this.item}) : super(key: key);

  final ItemView item;

  @override
  Widget build(BuildContext context) {
    final TextStyle _textStyle = Theme.of(context).textTheme.display1;
    return Card(
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(item.icon,size: 128.0,color: _textStyle.color),
            Text(item.title,style: _textStyle),
          ],
        ),
      ),
    );
  }
}


class TabBarDemo extends StatelessWidget {

  List<ItemView> items = <ItemView>[
    const ItemView(
      title: '自驾',
      icon: Icons.directions_car
    ),
    const ItemView(
        title: '自行车',
        icon: Icons.directions_bike
    ),
    const ItemView(
        title: '轮船',
        icon: Icons.directions_boat
    ),
    const ItemView(
        title: '公交车',
        icon: Icons.directions_bus
    ),
    const ItemView(
        title: '火车',
        icon: Icons.directions_railway
    ),
    const ItemView(
        title: '步行',
        icon: Icons.directions_walk
    ),
  ];





  @override
  Widget build(BuildContext context) {
    return new DefaultTabController(
      length: items.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text('TabBar示例'),
          bottom: TabBar(
            isScrollable: true,
            tabs: items.map((ItemView item){
              return Tab(
                text: item.title,
                icon: Icon(item.icon),
              );
            }).toList(),
          ),
        ),
        body: TabBarView(
          children: items.map((ItemView item){
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: SelectedView(item: item),
            );
          }).toList()
        ),
      ),
    );
  }
}
