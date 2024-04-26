import 'package:meta/meta.dart';

@immutable
abstract class ColorEvent {}

class ChangeColor extends ColorEvent {}