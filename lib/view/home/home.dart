import 'package:flutter/material.dart';
import 'package:mens_park/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: kGrey,
          shadowColor: Colors.transparent,
          leading: IconButton(
            onPressed: () {},
            icon: AspectRatio(
              aspectRatio: 1,
              child: Image.network(
                'https://cdn.pixabay.com/photo/2018/07/27/22/03/boy-3566903_960_720.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          bottom: const TabBar(tabs: [
            Tab(
              text: '1',
            ),
            Tab(
              text: '2',
            ),
            Tab(
              text: '3',
            ),
            Tab(
              text: '4',
            )
          ]),
        ),
        body: SafeArea(
          child: TabBarView(
            children: List.generate(
              4,
              (index) => Text('${index + 1}'),
            ),
          ),
        ),
      ),
    );
  }
}
