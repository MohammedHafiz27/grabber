import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grabber/Features/home_page/data/models/fruits_model.dart';

class CartCubit extends Cubit<List<FruitsModel>> {
  CartCubit() : super([]);
  void addToCart(item) {
    state.add(item);
    emit(List.from(state));
  }

  void removeFromCart(item) {
    state.remove(item);
    emit(List.from(state));
  }

  List<FruitsModel> showCart() {
    return state.toSet().toList();
  }

  int getItemCount(fruitsModel) {
    return state.where((item) => item.name == fruitsModel.name).length;
  }
}
