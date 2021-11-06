import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Favourites extends StatelessWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent,
      child: CustomScrollView(
        slivers: [
          SliverStaggeredGrid.countBuilder(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10, staggeredTileBuilder: (int index) => const StaggeredTile.fit(1), itemBuilder: (context, index){
            return ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              child: Image.asset("assets/favourites/a ($index).jpeg"),
            );
      }, itemCount: 14)
            ],
      ),
    );
  }
}
