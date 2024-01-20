import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<int> _cartItems = [];
  List<int> get cartItems => _cartItems;
  set cartItems(List<int> value) {
    _cartItems = value;
  }

  void addToCartItems(int value) {
    _cartItems.add(value);
  }

  void removeFromCartItems(int value) {
    _cartItems.remove(value);
  }

  void removeAtIndexFromCartItems(int index) {
    _cartItems.removeAt(index);
  }

  void updateCartItemsAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _cartItems[index] = updateFn(_cartItems[index]);
  }

  void insertAtIndexInCartItems(int index, int value) {
    _cartItems.insert(index, value);
  }

  double _cartSum = 0.0;
  double get cartSum => _cartSum;
  set cartSum(double value) {
    _cartSum = value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
