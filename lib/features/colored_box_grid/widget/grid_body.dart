
import 'package:colored_box/repositories/repositories.dart';
import 'package:flutter/material.dart';

import 'grid_item.dart';



class GridBody extends StatelessWidget {
  const GridBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () => ColorRepository.getColors(),
        child: FutureBuilder<List<ColoredBoxModel>>(
            future: ColorRepository.getColors(),
            builder: (BuildContext context,
                AsyncSnapshot<List<ColoredBoxModel>> snapshot) {
              if (snapshot.hasData) {
                return GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 50,
                      crossAxisCount: 3,
                    ),
                    itemCount: snapshot.data!.length,
                    itemBuilder: (BuildContext context, int index) {
                      ColoredBoxModel item = snapshot.data![index];
                      return GridItem(
                        item: item,
                        index: index,
                      );
                    });
              } else if (snapshot.hasError) {
                return Text("${snapshot.error}");
              }
              return const Center(child: CircularProgressIndicator());
            }),
      ),
    );
  }
}
