import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Solo extends StatelessWidget {
  const Solo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellowAccent,
      child: CustomScrollView(
        slivers: [
          SliverStaggeredGrid.countBuilder(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10, staggeredTileBuilder: (int index) => const StaggeredTile.fit(1), itemBuilder: (context, index){
            return ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              child: Image.asset("assets/solo/$index.jpeg"),
            );
      }, itemCount: 11)
            ],
      ),
    );
  }
}
