import 'package:flutter/material.dart';

class CategoryButton extends StatefulWidget {
  final String category;

  const CategoryButton({required this.category});

  @override
  _CategoryButtonState createState() => _CategoryButtonState();
}

class _CategoryButtonState extends State<CategoryButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          isPressed = !isPressed;
        });
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.white; // 버튼을 누르면 흰색으로 변하도록 설정
            }
            return isPressed
                ? Colors.grey
                : Colors.black38; // 미리 정의된 isPressed 상태에 따라 색상 설정
          },
        ),
      ),
      child: Text(widget.category),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: const CircleAvatar(
          backgroundImage: NetworkImage(
            'https://w7.pngwing.com/pngs/441/880/png-transparent-youtube-logo-youtube-computer-icons-logo-android-joystick-angle-electronics-rectangle.png',
          ),
        ),
        title: const Text('Youtubeee'),
        backgroundColor: Colors.black,
        actions: [
          IconButton(
            icon: const Icon(Icons.cast),
            onPressed: () {},
          ),
          Stack(
            alignment: const Alignment(0.6, -0.3),
            children: [
              IconButton(
                icon: const Icon(Icons.notifications_none_outlined),
                onPressed: () {},
              ),
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                ),
                child: const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Text(
                    '9+',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          const SizedBox(
            width: 27,
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://img1.daumcdn.net/thumb/R1280x0/?fname=http://t1.daumcdn.net/brunch/service/user/dFGD/image/MH85tgXHFdoO6f8R3N_VcIjHStw.png'),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Column(
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            return states.contains(MaterialState.pressed)
                                ? Colors.white // 버튼을 누르면 흰색으로 변함
                                : Colors.grey; // 기본적으로 검정색상
                          },
                        ),
                      ),
                      child: const Icon(Icons.add_circle_outline),
                    ),
                    const CategoryButton(
                      category: '전체',
                    ),
                    const CategoryButton(
                      category: '게임',
                    ),
                    const CategoryButton(
                      category: '뉴스',
                    ),
                    const CategoryButton(
                      category: '실시간',
                    ),
                    const CategoryButton(
                      category: '믹스',
                    ),
                    const CategoryButton(
                      category: '액션',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Thumbnail(
                urlInput:
                    'https://postfiles.pstatic.net/MjAyMzA2MjFfMzIg/MDAxNjg3Mjk2MzkwMzg4.GVnl3ExA64cqbhcO2x8z5o168PY9Mnb44tpB3Gl7lp4g.zmbQdw-dn2fT-YkS4WVfcI7WtKvBRABqsRtCyDXdiSsg.JPEG.cjh6173/%EB%8B%A8%EC%B2%B4%EC%82%AC%EC%A7%84.jpg?type=w580',
                urlTimes: '16:21',
              ),
              const VideoImg(
                mainImg:
                    'https://postfiles.pstatic.net/MjAyMzA2MjFfMzIg/MDAxNjg3Mjk2MzkwMzg4.GVnl3ExA64cqbhcO2x8z5o168PY9Mnb44tpB3Gl7lp4g.zmbQdw-dn2fT-YkS4WVfcI7WtKvBRABqsRtCyDXdiSsg.JPEG.cjh6173/%EB%8B%A8%EC%B2%B4%EC%82%AC%EC%A7%84.jpg?type=w580',
                title: '새싹캠퍼스 - 새싹페스티벌에 다녀왔습니다',
                name: 'flutter 5기',
                views: '100만',
                uploadig: '3시간',
              ),
              const Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(1.0),
                        child: Icon(
                          Icons.explore_outlined,
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: Text(
                          'Shorts',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Shorts(
                          shortsImage:
                              'https://postfiles.pstatic.net/MjAyMzA2MjFfMTIy/MDAxNjg3Mjk2MzEzNTk5.fZ6KVDnjQmOHUAa5z-_hmyyoIquKpFqwAVpaXpBQHZYg.Ca3tRZOHkCsthcQ841LCZyyNh6qRbsksEVIfdvC4foUg.JPEG.cjh6173/IMG_5364_(1).jpg?type=w580',
                          shortsName: '[새싹캠퍼스] 공부하는 올바른 모습입니다.',
                          shortsViews: '2만',
                        ),
                        Shorts(
                          shortsImage:
                              'https://postfiles.pstatic.net/MjAyMzA2MjFfMjcw/MDAxNjg3MzAwNzUzMzc3.nMmFwUBH4ot6OEGiI0Ez5rh9Rs1LDBnrEp0pM02Fk-Ag.ri9s2mAfqhLz1GfomFvuxhRIdUf5kxT85cjKsvZ73dIg.JPEG.cjh6173/%EA%B3%B5%EB%B6%80%EB%AA%A8%EC%8A%B5.jpg?type=w580',
                          shortsName: '[새싹캠퍼스] 공부하는 올바른 모습입니다.',
                          shortsViews: '22만',
                        ),
                        Shorts(
                          shortsImage:
                              'https://postfiles.pstatic.net/MjAyMzA2MjFfNTAg/MDAxNjg3MzAwNzgxNzcw.wbAdYfD7sPSFwwfKc9tVYTi3GjU7fN3QN6mSUt3tciQg.9VAQ6UTVWkfH1SsCCZ22sMna-NdFGyC6dxO8xsdP0UUg.JPEG.cjh6173/IMG_3062.jpg?type=w580',
                          shortsName: '[새싹캠퍼스] 맛있어보이는 토스트 입니다..',
                          shortsViews: '11만',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black, //블랙이 먹지 않는 이유는 뭘까...
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.egg_alt_outlined,
              color: Colors.black,
            ),
            label: 'Shorts',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline,
              color: Colors.black,
            ),
            label: '1',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.subscriptions_outlined,
              color: Colors.black,
            ),
            label: '구독',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.video_library_outlined,
              color: Colors.black,
            ),
            label: '보관함',
          ),
        ],
      ),
    );
  }
}

class Thumbnail extends StatelessWidget {
  final String urlInput;
  final String urlTimes;

  const Thumbnail({required this.urlInput, required this.urlTimes});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(urlInput),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          margin: const EdgeInsets.all(8.0),
          padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 5.0),
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.4),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Text(
            urlTimes,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13,
            ),
          ),
        ),
      ),
    );
  }
}

class VideoImg extends StatelessWidget {
  final String mainImg;
  final String title;
  final String name;
  final String views;
  final String uploadig;

  const VideoImg({
    required this.mainImg,
    required this.title,
    required this.name,
    required this.views,
    required this.uploadig,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(mainImg),
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4.0),
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4.0),
                Row(
                  children: [
                    Text(
                      views,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 4.0),
                    const Text(
                      '•',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(width: 4.0),
                    Text(
                      uploadig,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}

class Shorts extends StatelessWidget {
  final String shortsImage;
  final String shortsName;
  final String shortsViews;

  const Shorts({
    required this.shortsImage,
    required this.shortsName,
    required this.shortsViews,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 100, // 원하는 이미지 가로 크기로 조정
          height: 200, // 원하는 이미지 세로 크기로 조정
          child: Image.network(
            shortsImage,
            fit: BoxFit.cover, // 이미지를 적절히 조절하여 보여줍니다
          ),
        ),
        const SizedBox(height: 1),
        Text(
          shortsName,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 5,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          shortsViews,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
