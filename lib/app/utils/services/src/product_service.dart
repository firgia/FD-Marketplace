part of rest_api_service;

/// FAKE PRODUCT SERVICE
// put all custom setup in RestApiService (duration timeout, exception handling , etc..)
// and extend restApiService, if you need custom service provider
class ProductService extends RestApiServices {
  static final ProductService _singleton = ProductService._internal();

  factory ProductService() {
    return _singleton;
  }
  ProductService._internal();

  Product? getProductByID(String id) {
    final allProduct = getAll();
    final result = allProduct.where((product) => product.id == id).toList();
    return (result.length > 0) ? result[0] : null;
  }

  List<Product> getAll() {
    return [
      _vr,
      _orangeBlouse,
      _cardigan,
      _shoes,
      _blueMidiDress,
      _bag,
      _pinkJacket,
      _shoes2,
    ];
  }

  List<Product> getFashion() {
    return [
      _pinkJacket,
      _shoes2,
      _orangeBlouse,
      _cardigan,
      _shoes,
      _blueMidiDress,
    ];
  }

  final _bag = Product(
    id: "35366",
    idUser: "fwg123",
    images: [AssetImage(ImageRasterPath.bag)],
    name:
        "12 Colors Men Women Rope Bags Waterproof Drawstring Backpack Travel Hiking Bag ",
    price: 5,
    isFavorite: false,
    description:
        "Lorem ipsum At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
    totalViews: 20,
    totalReview: 3,
    rating: 4.5,
  );

  final _blueMidiDress = Product(
    id: "23515",
    idUser: "fwg123",
    images: [AssetImage(ImageRasterPath.blueMidiDress)],
    name:
        "Summer Womens Shirt Drees Loose Dress V-Neck Embroidered Midi Long Cotton Dress ",
    price: 15.2,
    isFavorite: true,
    description:
        "Lorem ipsum At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
    totalViews: 100,
    totalReview: 0,
    rating: 0,
  );

  final _cardigan = Product(
    id: "54647",
    idUser: "fwg345",
    images: [
      AssetImage(ImageRasterPath.cardigan),
      AssetImage(ImageRasterPath.cardigan2),
    ],
    name:
        "Women Knitted Sweater Open Front Pocket Coat Long Cardigan Coat/Jacket Winter",
    price: 10.1,
    isFavorite: true,
    description:
        "Lorem ipsum At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
    totalViews: 1135,
    totalReview: 140,
    rating: 4.8,
  );

  final _orangeBlouse = Product(
    id: "23455",
    idUser: "fwg345",
    images: [AssetImage(ImageRasterPath.orangeBlouse)],
    name:
        "Womens Loose Fit Short Sleeve T-Shirt V-Neck Casual Basic Tunic Top Long Blouse ",
    price: 5.9,
    isFavorite: false,
    description:
        "Lorem ipsum At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
    totalViews: 10,
    totalReview: 20,
    rating: 5,
  );

  final _pinkJacket = Product(
    id: "77532",
    idUser: "fwg345",
    images: [AssetImage(ImageRasterPath.pinkJacket)],
    name: "Barbour Women's Ladies Wax Biker Style Jacket Pink size 10",
    price: 30.2,
    isFavorite: true,
    description:
        "Lorem ipsum At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
    totalViews: 120,
    totalReview: 10,
    rating: 4.6,
  );

  final _shoes = Product(
    id: "56621",
    idUser: "fwg345",
    images: [AssetImage(ImageRasterPath.shoes)],
    name: "DC Shoes Pure Men's Leather Low Top Classic Skateboarding Sneakers",
    price: 12.0,
    isFavorite: false,
    description:
        "Lorem ipsum At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
    totalViews: 12,
    totalReview: 1,
    rating: 5,
  );

  final _shoes2 = Product(
    id: "45612",
    idUser: "fwg345",
    images: [AssetImage(ImageRasterPath.shoes2)],
    name:
        "Brooks Mens Glycerin 18 1103291D064 Black Blue Running Shoes Lace Up Size 11.5 D ",
    price: 12.2,
    isFavorite: false,
    description:
        "Lorem ipsum At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
    totalViews: 100,
    totalReview: 5,
    rating: 4.5,
  );

  final _vr = Product(
    id: "99010",
    idUser: "fwg123",
    images: [AssetImage(ImageRasterPath.vr)],
    name: "Oculus Quest All-in-One VR Gaming System 64GB (301-00174-01)",
    price: 200,
    isFavorite: false,
    description:
        "Lorem ipsum At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.",
    totalViews: 100,
    totalReview: 300,
    rating: 4.5,
  );
}
