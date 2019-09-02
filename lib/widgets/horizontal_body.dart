import 'package:flutter/material.dart';
import 'package:movie_app/model/data.dart';


class HorizontalBody extends StatelessWidget {
  const HorizontalBody({
    this.child,
    this.onPressed,
    this.size,
    this.data
  });

  final VoidCallback onPressed;
  final Function child;
  final List<Data> data;
  final int size;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: size,
          itemBuilder: (BuildContext context, int index) {
            return child(data[index]);
          },
        );
  }
}
