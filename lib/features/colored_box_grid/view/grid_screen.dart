import 'package:colored_box/features/colored_box_grid/widget/widget.dart';
import 'package:colored_box/features/provider/copy_model.dart';
import 'package:colored_box/repositories/repositories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class GridScreen extends StatefulWidget {
  const GridScreen({
    super.key,
  });

  @override
  State<GridScreen> createState() => _GridScreenState();
}

class _GridScreenState extends State<GridScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ColoredBoxModel>>(
        future: ColorRepository().getColors(),
        builder: (BuildContext context,
            AsyncSnapshot<List<ColoredBoxModel>> snapshot) {
          if (snapshot.hasData) {
            return Padding(
              padding: EdgeInsets.only(bottom: 20.h),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    floating: true,
                    snap: true,
                    toolbarHeight: 120.h,
                    backgroundColor: Colors.white,
                    expandedHeight: 120.h,
                    title: Text(
                      "Эксклюзивная палитра «Colored Box»",
                      style: Theme.of(context).textTheme.titleLarge,
                      textAlign: TextAlign.center,
                      maxLines: 3,
                    ),
                  ),
                  SliverGrid(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 50,
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      childAspectRatio: 0.9,
                    ),
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext context, int index) {
                        final copy = CopyModel();
                        ColoredBoxModel item = snapshot.data![index];
                        return ChangeNotifierProvider<CopyModel>(
                            create: (context) => copy,
                            child: GridItem(
                              item: item,
                              index: index,
                              copy: copy,
                            ));
                      },
                      childCount: snapshot.data!.length,
                    ),
                  ),
                ],
              ),
            );
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
