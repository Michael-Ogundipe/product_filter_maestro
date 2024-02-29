import 'package:product_filter_maestro/model/product_model.dart';

const image1 =
    'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/baa2520d-49da-4a27-ab2c-7fb133fb3008/air-max-90-mens-shoes-6n3vKB.png';

const image2 = 'https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/e75d90ba64ed4c47ac30c74490090bf5_9366/Superstar_XLG_Shoes_Black_IG9777_01_standard.jpg';

const image3 = 'https://i.ebayimg.com/images/g/JesAAOSwtqxjNFaR/s-l1600.jpg';

final allProducts = <ProductModel>[
  ProductModel(
    name: 'Nike Air Max 90',
    price: 150,
    image: image1,
    category: 'Shoes',
    brand: 'Nike',
  ),
  ProductModel(
    name: 'Adidas Superstar',
    price: 100,
    image: image2,
    category: 'Shoes',
    brand: 'Adidas',
  ),
  ProductModel(
    name: 'Nike Air Force 1',
    price: 120,
    image: image3,
    category: 'Sneakers',
    brand: 'Nike',
  ),
  ProductModel(
    name: 'Adidas Stan Smith',
    price: 90,
    image: image1,
    category: 'Shoes',
    brand: 'Adidas',
  ),
  ProductModel(
    name: 'Nike Air Max 97',
    price: 180,
    image: image2,
    category: 'Sneakers',
    brand: 'Nike',
  ),
  ProductModel(
    name: 'Adidas Yeezy Boost 350',
    price: 220,
    image: image3,
    category: 'Sneakers',
    brand: 'Adidas',
  ),
  ProductModel(
    name: 'Nike Air Max 270',
    price: 160,
    image: image1,
    category: 'Sneakers',
    brand: 'Nike',
  ),
  ProductModel(
    name: 'Adidas NMD R1',
    price: 130,
    image: image2,
    category: 'Shoes',
    brand: 'Adidas',
  ),
  ProductModel(
    name: 'Nike Air Max 95',
    price: 170,
    image: image3,
    category: 'Shoes',
    brand: 'Nike',
  ),
  ProductModel(
    name: 'Adidas Ultra Boost',
    price: 200,
    image: image1,
    category: 'Shoes',
    brand: 'Adidas',
  ),
];
