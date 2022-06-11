import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

class homePage extends StatelessWidget {
  const homePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List images = [
      'assets/1.png',
      'assets/1.png',
      'assets/1.png',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("My App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
                height: 240,
                child: Swiper(
                  itemCount: images.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 30.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.network(
                          images[index],
                          height: 200.2,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                  pagination: SwiperPagination(
                      margin: EdgeInsets.all(5.0),
                      builder: DotSwiperPaginationBuilder(
                        color: Colors.black12,
                        activeColor: Colors.green,
                        size: 10.0,
                        activeSize: 10.0,
                      )),
                  //control:SwiperControl(),
                  autoplay: true,
                  duration: 1000,
                ))
          ],
        ),
      ),
    );
  }
}
