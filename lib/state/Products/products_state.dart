import 'package:kita_kerja/core/failures/failures.dart';
import 'package:kita_kerja/models/Products/response/create_product_response.dart';
import 'package:kita_kerja/models/Products/response/fetch_product_response.dart';
import 'package:kita_kerja/models/Products/response/list_products_response.dart';
import 'package:kita_kerja/models/Products/response/update_product_response.dart';

// Create Product
class CreateProductState {}

class CreateProductInitial extends CreateProductState {}

class CreateProductLoading extends CreateProductState {}

class CreateProductFailure extends CreateProductState {
  final Failure failure;
  CreateProductFailure({required this.failure});
}

class CreateProductSuccess extends CreateProductState {
  final CreateProductResponse responseData;
  CreateProductSuccess({required this.responseData});
}

// Fetch Product
class FetchProductState {}

class FetchProductInitial extends FetchProductState {}

class FetchProductLoading extends FetchProductState {}

class FetchProductFailure extends FetchProductState {
  final Failure failure;
  FetchProductFailure({required this.failure});
}

class FetchProductSuccess extends FetchProductState {
  final FetchProductResponse responseData;
  FetchProductSuccess({required this.responseData});
}

// List Products
class ListProductsState {}

class ListProductsInitial extends ListProductsState {}

class ListProductsLoading extends ListProductsState {}

class ListProductsFailure extends ListProductsState {
  final Failure failure;
  ListProductsFailure({required this.failure});
}

class ListProductsSuccess extends ListProductsState {
  final ListProductsResponse responseData;
  ListProductsSuccess({required this.responseData});
}

// Update Product
class UpdateProductState {}

class UpdateProductInitial extends UpdateProductState {}

class UpdateProductLoading extends UpdateProductState {}

class UpdateProductFailure extends UpdateProductState {
  final Failure failure;
  UpdateProductFailure({required this.failure});
}

class UpdateProductSuccess extends UpdateProductState {
  final UpdateProductResponse responseData;
  UpdateProductSuccess({required this.responseData});
}
