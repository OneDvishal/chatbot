import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:texthub/Component/ChatRoom.component.dart';
import 'package:texthub/Component/Roomcard.component.dart';
import 'package:texthub/Component/Search.component.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Search(),
          Expanded(
            child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.72,
                // color: Colors.amber,
                child: ListView.builder(
                  // itemCount: 5,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Get.to(() => ChatRoom());
                      },
                      // child: RoomCard(),
                    );
                  },
                )),
          ),
        ],
      ),
    );
  }
}
