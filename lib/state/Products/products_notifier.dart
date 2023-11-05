import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kita_kerja/data/repository/Products/create_product_abstract.dart';
import 'package:kita_kerja/data/repository/Products/fetch_product_abstract.dart';
import 'package:kita_kerja/data/repository/Products/list_products_abstract.dart';
import 'package:kita_kerja/data/repository/Products/update_product_abstract.dart';
import 'package:kita_kerja/models/Products/body/create_product.dart';
import 'package:kita_kerja/models/Products/body/update_product.dart';
import 'package:kita_kerja/providers/repo_provider.dart';
import 'package:kita_kerja/state/Products/products_state.dart';

// Create Product
class CreateProductStateNotifier extends StateNotifier<CreateProductState> {
  final CreateProductRepo _createProductRepository;

  CreateProductStateNotifier(Ref ref)
      : _createProductRepository = ref.read(createProductRepositoryProvider),
        super(CreateProductInitial());

  Future<void> createProduct({
    required CreateProduct payload,
  }) async {
    state = CreateProductLoading();

    final userTransactionListOrError =
        await _createProductRepository.createProduct(payload: payload);

    state = userTransactionListOrError.fold(
      (l) => CreateProductFailure(
        failure: l,
      ),
      (r) => CreateProductSuccess(responseData: r),
    );

    if (state is CreateProductFailure) {
      final failureState = state as CreateProductFailure;
    } else if (state is CreateProductSuccess) {}
  }
}

// Fetch Product
class FetchProductStateNotifier extends StateNotifier<FetchProductState> {
  final FetchProductRepo _fetchProductRepository;

  FetchProductStateNotifier(Ref ref)
      : _fetchProductRepository = ref.read(fetchProductRepositoryProvider),
        super(FetchProductInitial());

  Future<void> fetchProduct() async {
    state = FetchProductLoading();

    final userTransactionListOrError = await _fetchProductRepository.fetchProduct();

    state = userTransactionListOrError.fold(
      (l) => FetchProductFailure(
        failure: l,
      ),
      (r) => FetchProductSuccess(responseData: r),
    );

    if (state is FetchProductFailure) {
      final failureState = state as FetchProductFailure;
    } else if (state is FetchProductSuccess) {}
  }
}

// List Products
class ListProductsStateNotifier extends StateNotifier<ListProductsState> {
  final ListProductsRepo _listProductsRepository;

  ListProductsStateNotifier(Ref ref)
      : _listProductsRepository = ref.read(listProductsRepositoryProvider),
        super(ListProductsInitial());

  Future<void> listProducts() async {
    state = ListProductsLoading();

    final userTransactionListOrError = await _listProductsRepository.listProducts();

    state = userTransactionListOrError.fold(
      (l) => ListProductsFailure(
        failure: l,
      ),
      (r) => ListProductsSuccess(responseData: r),
    );

    if (state is ListProductsFailure) {
      final failureState = state as ListProductsFailure;
    } else if (state is ListProductsSuccess) {}
  }
}

// Update Product
class UpdateProductStateNotifier extends StateNotifier<UpdateProductState> {
  final UpdateProductRepo _updateProductRepository;

  UpdateProductStateNotifier(Ref ref)
      : _updateProductRepository = ref.read(updateProductRepositoryProvider),
        super(UpdateProductInitial());

  Future<void> updateProduct({
    required UpdateProduct payload,
  }) async {
    state = UpdateProductLoading();

    final userTransactionListOrError =
        await _updateProductRepository.updateProduct(payload: payload);

    state = userTransactionListOrError.fold(
      (l) => UpdateProductFailure(
        failure: l,
      ),
      (r) => UpdateProductSuccess(responseData: r),
    );

    if (state is UpdateProductFailure) {
      final failureState = state as UpdateProductFailure;
    } else if (state is UpdateProductSuccess) {}
  }
}
