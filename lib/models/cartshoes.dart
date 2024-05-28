import 'package:get/get.dart';
import 'package:ecomerceapp/models/shoe.dart';

class CartController extends GetxController {
  var shoeShop = <shoe>[
    shoe(name: 'Zoom Freak', price: '\$240', imagepath: 'lib/assets/1.shoes.jpg', dexcription: 'Best Sport Shoe'),
    shoe(name: 'Air Jordan', price: '\$256', imagepath: 'lib/assets/2.shoes.webp', dexcription: 'Comfortable shoe'),
    shoe(name: 'Pilot', price: '\$256', imagepath: 'lib/assets/3.shoes.png', dexcription: 'Good shoes'),
    shoe(name: 'Nike', price: '\$286', imagepath: 'lib/assets/4.shoes.png', dexcription: 'Nice shoe'),
    shoe(name: 'Nike Addition', price: '\$500', imagepath: 'lib/assets/5.shoe.webp', dexcription: 'Best shoe from Nike'),
  ].obs;

  var userCart = <shoe>[].obs;

  List<shoe> getShoeList() {
    return shoeShop;
  }

  List<shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(shoe shoe) {
    userCart.add(shoe);
  }

  void removeItemFromCart(shoe shoe) {
    userCart.remove(shoe);
  }
}
