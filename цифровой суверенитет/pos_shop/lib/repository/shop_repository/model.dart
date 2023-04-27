import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../entities/Shop/shop.dart';
import 'shop_repository.dart';

final shopRepository = Provider((ref) => ShopRepository());



class ShopsStateNotifier extends StateNotifier<List<Shop>> {
  ShopsStateNotifier(this.ref) : super([]) {
    loadShops();
  }

  final Ref ref;
  late final getShops = ref.read(shopRepository);

  void loadShops() {
    state = getShops.getShops();
  }

  void save(Shop shop) {
    ref.read(shopRepository).addShop(shop);
    loadShops();
  }

  Shop get(String id) {
    return ref.read(shopRepository).getShop(id);
  }

  void delete(String id) {
    ref.read(shopRepository).deleteShop(id);
    loadShops();
  }
}

final shopListState =
    StateNotifierProvider<ShopsStateNotifier, List<Shop>>((ref) {
  return ShopsStateNotifier(ref);
});

final shopListModel = Provider<ShopsStateNotifier>((ref) {
  return ref.watch(shopListState.notifier);
});