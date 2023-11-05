import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/state/Products/products_notifier.dart';
import 'package:kita_kerja/state/Products/products_state.dart';

// Create Product
final createProductStateNotifierProvider =
    StateNotifierProvider<CreateProductStateNotifier, CreateProductState>(
  (ref) => CreateProductStateNotifier(ref),
);

// List Products
final listProductsStateNotifierProvider =
    StateNotifierProvider<ListProductsStateNotifier, ListProductsState>(
  (ref) => ListProductsStateNotifier(ref),
);

// Fetch Product
final fetchProductStateNotifierProvider =
    StateNotifierProvider<FetchProductStateNotifier, FetchProductState>(
  (ref) => FetchProductStateNotifier(ref),
);

// Update Product
final updateProductStateNotifierProvider =
    StateNotifierProvider<UpdateProductStateNotifier, UpdateProductState>(
  (ref) => UpdateProductStateNotifier(ref),
);
