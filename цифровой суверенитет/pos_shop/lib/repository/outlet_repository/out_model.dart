
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../entities/outlet/outlet.dart';
import 'outlet_repository.dart';

final outletRepository = Provider((ref) => OutletRepository());

class OutletStateNotifier extends StateNotifier<List<Outlet>> {
  OutletStateNotifier(this.ref) : super([]) {
    loadoutlets();
  }

  final Ref ref;
  late final getOutlets = ref.read(outletRepository);

  void loadoutlets() {
    state = getOutlets.getOutlets();
  }

  void save(Outlet outlet) {
    getOutlets.addOutlet(outlet);
    loadoutlets();
  }

  Outlet get(String id) {
    return getOutlets.getOutlet(id);
  }

  void delete(String id) {
    ref.read(outletRepository).deleteOutlet(id);
    loadoutlets();
  }
}

final outletListState =
    StateNotifierProvider<OutletStateNotifier, List<Outlet>>((ref) {
  return OutletStateNotifier(ref);
});

final outletListModel = Provider<OutletStateNotifier>((ref) {
  return ref.watch(outletListState.notifier);
});
