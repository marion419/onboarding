import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:thread_app_sample/thread_feed_write_controller.dart';

class ThreadWritePage extends StatelessWidget {
  const ThreadWritePage({super.key});

  //선택한 이미지를 setSelectedImages 슬롯으로 전송
  Future<void> getImagePickerData() async {
    final ImagePicker picker = ImagePicker();
    final List<XFile> images = await picker.pickMultiImage();
    Get.find<ThreadFeedWriteController>().setSelectedImages(images);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: Get.back,
          behavior: HitTestBehavior.translucent,
          child: Center(
            child: Text(
              '취소',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        title: Text('새로운 스레드'),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                Icons.more_horiz,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/profile_image.png',
                  width: 50,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Kimsungduck',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xff262626),
                        ),
                      ),

                      TextField(
                        cursorHeight: 16,
                        decoration: InputDecoration(
                          isDense: true,
                          hintText: '새로운 소식이 있나요?',
                          hintStyle: TextStyle(
                            color: Color(0xff9a9a9a),
                            fontSize: 14,
                          ),
                          contentPadding: EdgeInsets.zero,
                          border: InputBorder.none,
                        ),
                        onChanged: (value){
                          Get.find<ThreadFeedWriteController>()
                            .setContent(value);
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            //---------------
            Row(
              children: [
                SizedBox(width: 50),
                Expanded(child: GetBuilder<ThreadFeedWriteController>(
                  builder: (controller) {
                    if (controller.selectedImages == null ||
                        (controller.selectedImages?.isEmpty ?? true)) {
                      return Container();
                    }
                    return SizedBox(
                      height: 250,
                      child: PageView(
                        padEnds: false,
                        pageSnapping: false,
                        controller: PageController(viewportFraction: 0.4),
                        children: List.generate(
                          controller.selectedImages?.length ?? 0,
                          (index) => Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Stack(children: [
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  top: 0,
                                  bottom: 0,
                                  child: Image.file(
                                    File(
                                        controller.selectedImages![index].path),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  right: 5,
                                  top: 5,
                                  child: Icon(
                                    Icons.close,
                                    color: Colors.white,
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ).toList(),
                      ),
                    );
                  },
                )),
              ],
            ),
            //---------------
          ],
        ),
      ),

    );
  }
}

