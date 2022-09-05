import 'package:flutter/material.dart';
import 'package:whatsapp_ui_demo/src/model/chat_data.dart';
import 'package:whatsapp_ui_demo/src/utils/constants/color.dart';
import 'package:whatsapp_ui_demo/src/utils/constants/dimensions.dart';
import 'package:whatsapp_ui_demo/src/utils/constants/styles.dart';
import 'package:whatsapp_ui_demo/src/utils/factory/fake_data.dart';
import 'package:whatsapp_ui_demo/src/utils/scroll_behavior/scroll_behavior.dart';
import 'package:whatsapp_ui_demo/src/view/base/helper.dart';
import 'package:whatsapp_ui_demo/src/view/base/kFloatingActionButton.dart';
import 'package:whatsapp_ui_demo/src/view/base/kSubtitle.dart';
import 'package:whatsapp_ui_demo/src/view/base/kTitle.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScrollConfiguration(
        behavior: kCustomScrollBehavior(),
        child: ListView.separated(
          itemCount: chatDataList.length,
          separatorBuilder: (context, index){
            return const Divider(
              height: 5,
              indent: 85,
              endIndent: 15,
            );
          },
          itemBuilder: (context, index){
            return ChatItemWidget(chatData: chatDataList[index]);
          },
        ),
      ),
      floatingActionButton: kFloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add_call),
      ),
    );
  }
}

class ChatItemWidget extends StatelessWidget {
  ChatItemWidget({Key? key, required this.chatData}) : super(key: key);

  ChatData chatData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Dimensions.paddingSizeDefault,
        vertical: Dimensions.paddingSizeExtraSmall,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
              chatData.userImgUrl,
            ),
          ),
          addHorizontalSpace(12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: kTitle(title: chatData.userName),
                    ),
                    Text(
                      chatData.time,
                      style: h5.copyWith(
                        color: kSubtitleColor,
                      ),
                    ),
                  ],
                ),
                addVerticalSpace(4),
                Row(
                  children: [
                    chatData.seenMessage
                    ? Icon(Icons.done_all, color: kBlue, size: 18,)
                    : Icon(Icons.done, color: kSubtitleColor, size: 18,),
                    addHorizontalSpace(4),
                    Expanded(
                      child: kSubtitle(subtitle: chatData.message),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
