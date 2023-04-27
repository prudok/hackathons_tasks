import '../../entities/Shop/shop.dart';

class ShopRepository {
  List<Shop> shops = [];
  void addShop(Shop shop) {
    shops.add(shop);
  }

  void deleteShop(String id) {
    shops.removeWhere((element) => element.id == id);
  }

  void updateShop(Shop shop) {
    //implement
  }

  Shop getShop(String id) {
    return shops.firstWhere((element) => element.id == id); 
  }

  List<Shop> getShops() {
    return shops;
  }
}
