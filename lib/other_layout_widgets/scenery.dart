import 'package:flutter/material.dart';
import 'package:flutter_base/common/show_code.dart';

class Scenery extends StatelessWidget {
  Column _buildBtnColumn(IconData icon, String label) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.lightGreen[600],
        ),
        Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w400,
                color: Colors.lightGreen[600]),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget addressInfo = Container(
        padding: EdgeInsets.all(32.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      '风景区地址',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    '重庆市渝中区嘉陵江边',
                    style: TextStyle(color: Colors.grey[500]),
                  )
                ],
              ),
            ),
            Icon(
              Icons.star,
              color: Colors.red[500],
            ),
            Text('68')
          ],
        ));

    Widget btns = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _buildBtnColumn(Icons.call, '电话'),
          _buildBtnColumn(Icons.near_me, '导航'),
          _buildBtnColumn(Icons.share, '分享'),
        ],
      ),
    );

    Widget textContainer = Container(
      padding: EdgeInsets.all(32.0),
      child: Text(
        '''
        洪崖洞，原名洪崖门，战国时期（公元前314年），秦张仪灭巴国后修筑巴郡。三国蜀汉时期（公元前226年），李严主导了重庆历史上的第二次筑城。当时重庆人烟稀少，大规模开采山石困难，所以为土城。南宋时期（1238年），彭大雅为抗击元兵第三次筑城，城墙由条石堆砌而成。明朝洪武四年（1371年），戴鼎第四次筑城，建九开八闭十七门，洪崖门为闭门。洪崖门原是一道开门，此地曾发生过一场惨烈战事。据《新元史·汪世显传》记载：汪惟正于至元八年（1271年）与两川行枢密院合兵围重庆，夺洪崖门，获宋将何世贤。
        清代重庆城区划分为二十九坊，城门外编为十五厢，洪崖门内地区属洪崖坊，附廓之区为洪崖厢。洪崖门，历来为军事要塞，也是重庆城的一大胜景。洪崖洞在洪崖门外岩下崖边，是一个巨大石窟，又叫洪岩洞、神仙洞。相传古代有个神仙，大号洪崖仙人。晋代学者郭璞曾写下“右拍洪崖肩”诗句，将其拟人化。洪崖门早已损毁，位于洪崖洞海盗船位置。保留了江隘炮台、洪崖闭门、纸盐码头、明代城墙、辛亥碑文等大部分历史遗迹。
        2002年，洪崖洞景观工程开始竞标。2003年，因规划需修建千厮门大桥，洪崖洞项目得移45米，原设计方案重新调整。洪崖洞最初的预算有9000万元，屡改设计投资又追加2亿多元。2006年，总投资3.85亿元兴建而成，形成11楼和1楼走出去都是马路的山城特色。
        ''',
        softWrap: true,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('洪崖洞景区'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.code),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ShowCode(
                            filePath: 'other_layout_widgets/scenery.dart',
                          )));
            },
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/hongyadong.jpg',
            width: 600.0,
            height: 240.0,
            fit: BoxFit.cover,
          ),
          addressInfo,
          btns,
          textContainer
        ],
      ),
    );
  }
}
