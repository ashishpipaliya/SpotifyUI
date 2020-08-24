import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flamera/constants.dart';
import 'package:flutter_icons/flutter_icons.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [randomColor, kSecondaryColor],
                  begin: Alignment.topLeft,
                  end: FractionalOffset(0.3, 0.3))),
          width: size.width,
          // padding: EdgeInsets.fromLTRB(15, size.height * 0.035, 0, 0),
          child: CustomScrollView(
            scrollDirection: Axis.vertical,
            slivers: [
              SliverAppBar(
                backgroundColor: Colors.transparent,
                expandedHeight: 150,
                centerTitle: true,
                floating: false,
                title: Text("Search",
                    style: titleFontStyle.copyWith(fontSize: 50)),
              ),
              SliverToBoxAdapter(
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  clipBehavior: Clip.antiAlias,
                  child: Container(
                      height: 50,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            AntDesign.search1,
                            color: kSearchBarColor,
                          ),
                          SizedBox(width: 10.0),
                          Text("Artists, songs, or podcasts",
                              style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: kSearchBarColor)),
                          SizedBox(height: 30.0)
                        ],
                      )),
                ),
              ),
              SliverToBoxAdapter(
                child: Row(children: [
                  Padding(padding: EdgeInsets.only(top: 50.0)),
                  Text(
                    "Your top genres",
                    style: titleFontStyle.copyWith(fontSize: 16.0),
                  )
                ]),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250.0,
                  mainAxisSpacing: 15.0,
                  crossAxisSpacing: 15.0,
                  childAspectRatio: 2.0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return ClipRRect(
                      clipBehavior: Clip.antiAlias,
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        // margin: EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)][200],
                        child: Text('${index + 1}'),
                      ),
                    );
                  },
                  childCount: 4,
                ),
              ),
              SliverToBoxAdapter(
                child: Row(children: [
                  Padding(padding: EdgeInsets.only(top: 50.0)),
                  Text(
                    "Browse all",
                    style: titleFontStyle.copyWith(fontSize: 16.0),
                  )
                ]),
              ),
              SliverGrid(
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 250.0,
                  mainAxisSpacing: 15.0,
                  crossAxisSpacing: 15.0,
                  childAspectRatio: 2.0,
                ),
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    return ClipRRect(
                      clipBehavior: Clip.antiAlias,
                      borderRadius: BorderRadius.circular(5.0),
                      child: Container(
                        // margin: EdgeInsets.all(10.0),
                        alignment: Alignment.center,
                        color: Colors.primaries[
                            Random().nextInt(Colors.primaries.length)][200],
                        child: Text('${index + 1}'),
                      ),
                    );
                  },
                  childCount: 44,
                ),
              ),
            ],
          )),

      // body: CustomScrollView(
      //   slivers: [
      //     SliverAppBar(
      //       floating: true,
      //       expandedHeight: 200.0,
      //       flexibleSpace: FlexibleSpaceBar(
      //         title: Text("Search"),
      //         centerTitle: true,
      //       ),
      //     ),
      //     SliverGrid(
      //         delegate: SliverChildBuilderDelegate((context, index) {
      //           Color colors = Colors
      //               .primaries[Random().nextInt(Colors.primaries.length)][200];
      //           return Container(
      //             alignment: Alignment.center,
      //             color: colors,
      //             child: Text('$colors'),
      //           );
      //         }),
      //         gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
      //           mainAxisSpacing: 10.0,
      //           crossAxisSpacing: 10.0,
      //           maxCrossAxisExtent: 250,
      //           childAspectRatio: 2.0,
      //         ))
      //   ],
      // ),
    );
  }
}
