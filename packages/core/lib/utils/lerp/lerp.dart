import 'dart:ui' show lerpDouble;

double? lerpDoubleList(List<double> values, double t) {
  assert(values.length >= 2, 'Array must have at least two elements');

  double interval = 1 / (values.length - 1);

  int index = ((values.length - 1) * t).floor();
  double tInInterval = (t - index * interval) / interval;

  if (values.length == index + 1) {
    return values[index];
  }
  return lerpDouble(values[index], values[index + 1], tInInterval);
}
