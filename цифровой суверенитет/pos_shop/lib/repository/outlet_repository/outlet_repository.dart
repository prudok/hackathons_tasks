import '../../entities/outlet/outlet.dart';

class OutletRepository {
  List<Outlet> outletList = [];

  void addOutlet(Outlet newOutlet) {
    outletList.add(newOutlet);
  }

  void deleteOutlet(String id) {
    outletList.removeWhere((element) => element.id == id);
  }

  void updateoutlet(Outlet outlet) {
    //implement
  }

  Outlet getOutlet(String id) {
    return outletList.firstWhere((element) => element.id == id); 
  }

  List<Outlet> getOutlets() {
    return outletList;
  }
}
