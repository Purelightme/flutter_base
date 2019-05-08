import 'package:flutter/material.dart';

enum ConferenceItem {AddMember,LockConference,ModifyLayout,TurnOffAll}

class PopupMenuButtonDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PupupMenuButton示例'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: (){},
          child: PopupMenuButton<ConferenceItem>(
            onSelected: (ConferenceItem result){
              print(result);
            },
            itemBuilder: (BuildContext context) =>
              <PopupMenuEntry<ConferenceItem>>[
                const PopupMenuItem<ConferenceItem>(
                  value: ConferenceItem.AddMember,
                  child: Text('添加成员'),
                ),
                const PopupMenuItem<ConferenceItem>(
                  value: ConferenceItem.LockConference,
                  child: Text('锁定会议'),
                ),
                const PopupMenuItem<ConferenceItem>(
                  value: ConferenceItem.ModifyLayout,
                  child: Text('修改布局'),
                ),
                const PopupMenuItem<ConferenceItem>(
                  value: ConferenceItem.TurnOffAll,
                  child: Text('挂断所有'),
                ),
              ],
          ),
        ),
      ),
    );
  }
}
