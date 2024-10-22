import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:thread_app_sample/thread_feed_write_controller.dart';
import 'package:thread_app_sample/thread_write_page.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 50,
        ),
        Image.asset(
          'assets/images/thread_logo.png',
          width: 50,
        ),
        Image.asset(
          'assets/images/more_icon.png',
          width: 50,
        ),
      ],
    );
  }

  Widget _quickFeedWriteView() {
    return GestureDetector(
      onTap: () {
         Get.to(() => ThreadWritePage(), binding: BindingsBuilder(() {
          Get.put(ThreadFeedWriteController());
        }));
      },
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
                    ), 
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(width: 50),
              Expanded(
                child: SizedBox(
                  height: 250,
                  child: PageView(
                    padEnds: false,
                    controller: PageController(viewportFraction: 0.4),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(children: [
                            Container(
                              color: Colors.grey.shade200,
                            ),
                            Positioned(
                              right: 5,
                              top: 5,
                              child: Icon(Icons.close),
                            )
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(children: [
                            Container(
                              color: Colors.grey.shade200,
                            ),
                            Positioned(
                              right: 5,
                              top: 5,
                              child: Icon(Icons.close),
                            )
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Stack(children: [
                            Container(
                              color: Colors.grey.shade200,
                            ),
                            Positioned(
                              right: 5,
                              top: 5,
                              child: Icon(Icons.close),
                            )
                          ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: 60),
              GestureDetector(
                  child:
                      Image.asset('assets/images/photo_icon.png', width: 30)),
              SizedBox(width: 10),
              GestureDetector(
                  child:
                      Image.asset('assets/images/photo_icon.png', width: 30)),
              SizedBox(width: 10),
              GestureDetector(
                  child: Image.asset('assets/images/gif_icon.png', width: 30)),
              SizedBox(width: 10),
              GestureDetector(
                  child: Image.asset('assets/images/mic_icon.png', width: 30)),
              SizedBox(width: 10),
              GestureDetector(
                  child:
                      Image.asset('assets/images/align_icon.png', width: 30)),
            ],
          )
        ],
      ),
    );
  }

  Widget _singleFeed() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _leftProfileArea(),
        Expanded(
          child: _contentArea(),
        ),
      ],
    );
  }

  Widget _leftProfileArea() {
    return Column(
      children: [
        SizedBox(
          width: 60,
          height: 60,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    'https://yt3.googleusercontent.com/CRfIeldfkRMlZQDIFjl9JOiO0vfbaoAcozOXhxOWSupfmajfSMBBEcs3_2axkGeaiToUt-Ry=s900-c-k-c0x00ffffff-no-rj',
                    width: 50,
                  ),
                ),
              ),
              Positioned(
                  right: 5,
                  bottom: 2,
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        decoration: BoxDecoration(color: Colors.black),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 17,
                        ),
                      ),
                    ),
                  ))
            ],
          ),
        ),
        SizedBox(height: 15),
        Container(
          width: 2,
          height: 200,
          color: Color(0xffe5e5e5),
        ),
      ],
    );
  }

  Widget _contentArea() {
    return Column(
      children: [
        SizedBox(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    '개발하는남자',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 7),
                  Text(
                    '14시간',
                    style: TextStyle(
                      color: Color(0xff999999),
                      fontSize: 14,
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.more_horiz,
                  color: Color(0xff999999),
                ),
              )
            ],
          ),
        ),
        Text(
          '장진우 셰프님이 제주시 산지천에 레스토랑을 또 하 나 오픈했다. 이번에는 태국식당. "쏨" 아직 가오픈 인데 어째어째 초대를 받아 점심을 먹으러 갔다. 제 주도에 있는 진우님 식당 거의 다 먹어봤는데 난 여 기가 최고인듯 ^^ 마침 진우님 생일이어서 간단한 간식거리도 사드리고 ^^ 여긴 자주 와야겠다 ㅎㅎ 카오만가이(닭수육+닭육수밥), 느어팟끄라파오(타이 바질 소고기 볶음 덮밥), 쏨꾀이튀유톰양(쏨표 새 우 & 돼지고기 톰양 계란면), 공신채볶음과 타이밀 크티와 코코넛쿨러를 것들였다. 느므 맛있네... 제주',
          style: TextStyle(
            color:Colors.black,
            fontSize: 16),
        ),
        SizedBox(height: 20),
        SizedBox(
          height: 200,
          child: PageView(
            padEnds: false,
            controller: PageController(viewportFraction: 0.75),
            children: [
              Image.asset('assets/images/2.png'),
              Image.asset('assets/images/1.png'),
              Image.asset('assets/images/3.png'),
            ],
          ),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: 55,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_like.png',
                      width: 30,
                    ),
                    Text('24'),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: 55,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_message.png',
                      width: 30,
                    ),
                    Text('14'),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: SizedBox(
                width: 55,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_share.png',
                      width: 30,
                    ),
                    Text('7'),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Image.asset(
                'assets/images/icon_send.png',
                width: 30,
              ),
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            _header(),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: _quickFeedWriteView(),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: _singleFeed(),
            ),
          ],
        ),
      ),
    );
  }
}