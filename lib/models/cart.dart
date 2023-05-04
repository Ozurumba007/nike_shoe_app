import 'shoe.dart';

class Cart {
  // list of shoes for sale

  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK',
      price: '236',
      imagePath: 'lib/images/giannis_shoe.png',
      description: 'The forward-thinking design of his latest signature shoe.',
    ),
    Shoe(
      name: 'Lebron James',
      price: '456',
      imagePath: 'lib/images/lebron_james_shoe.png',
      description: 'Attain Greater High with this Signaure Shoe',
    ),
    Shoe(
      name: 'Zion William',
      price: '456',
      imagePath: 'lib/images/zion_williams_shoe.png',
      description: 'Attain Greater High with this Signaure Shoe',
    ),
    Shoe(
      name: 'Thanasis Shoe',
      price: '350',
      imagePath: 'lib/images/thanasis_shoe.png',
      description: 'Attain Greater High with this Signaure Shoe',
    ),
    Shoe(
      name: 'Kyrie Irving',
      price: '120',
      imagePath: 'lib/images/kyrie_irving_shoe.png',
      description: 'Attain Greater High with this Signaure Shoe',
    )
  ];

  // list of items in user cart

  List<Shoe> userCart = [];

  // get list of shoe for sale

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
  }
}
