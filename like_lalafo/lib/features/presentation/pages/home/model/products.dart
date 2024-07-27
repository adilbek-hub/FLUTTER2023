class ProductModel {
  final double? price;
  final double? discountPrice;
  final String? vacation;
  final String? description;
  final String? imageUrl;

  ProductModel(
      {this.price,
      this.discountPrice,
      this.vacation,
      this.description,
      this.imageUrl});
}

List<ProductModel> products = [
  ProductModel(
    price: 50000,
    discountPrice: null,
    vacation: '6 дней',
    description: 'Описание',
    imageUrl:
        'https://media.croma.com/image/upload/v1708679074/Croma%20Assets/Communication/Mobiles/Images/301918_0_f3f5jq.png',
  ),
  ProductModel(
    price: 50000,
    vacation: '6 дней',
    description: '1 комната, Собственник',
    imageUrl:
        'https://www.mbusa.com/content/dam/mb-nafta/us/myco/my24/e-class/sedan/all-vehicles/2024-E350-4M-SEDAN-AVP-DR.png',
  ),
  ProductModel(
    price: 50000,
    discountPrice: null,
    vacation: '6 дней',
    description: '1 комната, Собственник',
    imageUrl:
        'https://tjh.com/wp-content/uploads/2023/06/TJH_HERO_TJH-HOME@2x-1-1536x1021.webp',
  ),
  ProductModel(
    price: 50000,
    discountPrice: 5000,
    vacation: '7 дней',
    description: ' 1 комната, Собственник, С мебелью частично',
    imageUrl:
        'https://da28rauy2a860.cloudfront.net/completehome/wp-content/uploads/2021/03/03114534/Millbrook-Homes-58series-1.jpg',
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl:
        'https://www.advgazeta.ru/upload/iblock/541/kak_poluchit_zemelnyy_uchastok_v_sobstvennost_besplatno_1.jpg',
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/b/b5/A_Friesian_Bull%2C_Llandeilo_Graban_-_geograph.org.uk_-_579885.jpg',
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl:
        'https://cdn.britannica.com/70/234870-050-D4D024BB/Orange-colored-cat-yawns-displaying-teeth.jpg',
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl:
        'https://media.architecturaldigest.com/photos/63079fc7b4858efb76814bd2/16:9/w_4000,h_2250,c_limit/9.%20DeLorean-Alpha-5%20%5BDeLorean%5D.jpg',
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: 'https://www.deon-mebel.ru/images/detailed/662/6.jpg',
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: 'https://azbukadoma.kg/files/originals/4173473.jpg',
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl:
        'https://media.croma.com/image/upload/v1708679074/Croma%20Assets/Communication/Mobiles/Images/301918_0_f3f5jq.png',
  ),
];

List<ProductModel> recomendedProducts = [
  ProductModel(
    price: 10000,
    discountPrice: null,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl:
        'https://www.ikea.com/eg/en/images/products/ekedalen-extendable-table-oak__0736974_pe740838_s5.jpg',
  ),
  ProductModel(
    price: 10000,
    vacation: '7 дней',
    description: '1 комната, Собственник',
    imageUrl:
        'https://www.sencor.com/Sencor/media/content/product/35059333-02.jpg',
  ),
  ProductModel(
    price: 10000,
    discountPrice: null,
    vacation: '7 дней',
    description: '1 комната, Собственник',
    imageUrl:
        'https://cdn.mos.cms.futurecdn.net/Ajc3ezCTN4FGz2vF4LpQn9-1200-80.jpg',
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: ' 1 комната, Собственник, С мебелью частично',
    imageUrl:
        'https://parkpatriot.ru/upload/iblock/e1c/h4bjvnby97gfy27xxabruh1v369qkwrt/0.png',
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: 'https://fuacare.com/wp-content/uploads/2022/11/Dress.jpeg',
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl:
        'https://object.pscloud.io/cms/cms/Photo/img_0_76_369_0_1_DsHy4e.jpg',
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl:
        'https://darstroy-yug.ru/upload/medialibrary/bc3/zaxpqr3erfsy4rzu4gkr5mmoi3lvj4f5.jpg',
  ),
  ProductModel(
      price: 10000,
      discountPrice: 8000,
      vacation: '7 дней',
      description: 'Описание',
      imageUrl:
          'https://s3da-design.com/wp-content/uploads/2022/01/Home-Renovation-3-1024x683.jpg'),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl: 'https://cdn.britannica.com/54/162454-050-D6CDF316/turkey.jpg',
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl:
        'https://cdn.britannica.com/13/234213-050-45F47984/dachshund-dog.jpg',
  ),
  ProductModel(
    price: 10000,
    discountPrice: 8000,
    vacation: '7 дней',
    description: 'Описание',
    imageUrl:
        'https://www.hindustantimes.com/ht-img/img/2023/08/25/1600x900/international_dog_day_1692974397743_1692974414085.jpg',
  ),
];
