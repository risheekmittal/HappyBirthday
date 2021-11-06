import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Miscellaneous extends StatelessWidget {
  const Miscellaneous({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purpleAccent,
      child: CustomScrollView(
        slivers: [
          SliverStaggeredGrid.countBuilder(crossAxisCount: 2,mainAxisSpacing: 10,crossAxisSpacing: 10, staggeredTileBuilder: (int index) => const StaggeredTile.fit(1), itemBuilder: (context, index){
            return ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              child: Image.asset("assets/miscellaneous/a ($index).jpeg"),
            );
      }, itemCount: 4)
            ],
      ),
    );
  }
}
