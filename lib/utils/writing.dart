import 'dart:math';

String tenThousand(int number) {
  var threshold = pow(10, 4);

  if (number > threshold) {
    return "${(number / threshold).ceil()}万";
  }

  return number.toString();
}
