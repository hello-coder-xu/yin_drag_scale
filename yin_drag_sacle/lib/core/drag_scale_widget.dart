import 'package:flutter/material.dart';
import './touchable_container.dart';

class DragScaleContainer extends StatefulWidget {
  final Widget child;
  final double maxScale;

  /// 双击内容是否一致放大，默认是true，也就是一致放大
  /// 如果为false，第一次双击放大两倍，再次双击恢复原本大小
  final bool doubleTapStillScale;

  DragScaleContainer({
    @required this.child,
    this.doubleTapStillScale = true,
    this.maxScale,
  });

  @override
  State<StatefulWidget> createState() => _DragScaleContainerState();
}

class _DragScaleContainerState extends State<DragScaleContainer> {
  @override
  Widget build(BuildContext context) {
    return ClipRect(
      child: TouchableContainer(
        child: widget.child,
        doubleTapStillScale: widget.doubleTapStillScale,
      ),
    );
  }
}
