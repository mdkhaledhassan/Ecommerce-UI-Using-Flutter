class Model {
  String? img;
  String? name;
  dynamic? price;
  String? av;

  Model({this.img, this.name, this.price, this.av});
}

List<Model> model = [
  Model(
    img:
        'https://www.pngall.com/wp-content/uploads/5/Gaming-Headset-Transparent.png',
    name: 'Beats Studio3 Headphones ',
    price: 300,
  ),
  Model(
    img:
        'https://png.pngtree.com/png-clipart/20201129/ourmid/pngtree-headphones-png-image_2452681.jpg',
    name: 'Havit Gaming headphone ',
    price: 150,
  ),
  Model(
    img:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHNtgfqPfRCWsseqhzTAxWphsS9l_07Xv_DeVVcry9vw&s',
    name: 'SureFire Headset',
    price: 170,
  ),
  Model(
    img:
        'https://e7.pngegg.com/pngimages/424/407/png-clipart-headphones-headphones.png',
    name: 'SureFire Headset',
    price: 160,
  )
];

List<Model> second_Model = [
  Model(
      img:
          'https://static-01.daraz.com.bd/p/87933b3806ab2ee922f5b3584262adef.jpg',
      name: 'QKZ DM10 Earphone',
      price: 30,
      av: 'available'),
  Model(
      img:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSApX4Fu_B_jZWiNO-0_MRuSCtKQ002ciw-jg&usqp=CAU',
      name: 'Realme Earphone ',
      price: 120,
      av: 'available'),
  Model(
      img:
          'https://img.joomcdn.net/9d01197eebf48e17cc8a07335e43f4b9ca90c3b9_original.jpeg',
      name: 'White Earphone',
      price: 100,
      av: 'available'),
  Model(
      img:
          'https://img.joomcdn.net/9d01197eebf48e17cc8a07335e43f4b9ca90c3b9_original.jpeg',
      name: 'White Earphone ',
      price: 90,
      av: 'available'),
];
