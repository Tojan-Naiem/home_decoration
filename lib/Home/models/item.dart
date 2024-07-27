class Item{
  String? title;
  String? image;
  String? rate;
  String? type;
  String? price;

  Item(this.title,this.image,this.rate,this.type,this.price);

  static List<Item>items=[
    Item('Table disk lump','images/lump.png','4.5','Lump','12\$'),
    Item('Painting Berry Plants','images/board.png','4.5','Paint','12\$'),
    Item('Decorative Plants','images/plant.png','4.5','Plants','70\$'),
    Item('Chair','images/chair.png','4.5','Chair','12\$'),

  ];
// static List<Item>news=[
//     Item('Table disk lump','images/lump2.png','4.5','Lump','55\$'),
//     Item('Cute Bed Cover','images/Bed cover.png','4.5','Paint','54\$'),
//     Item('Inside Swing','images/swing.png','3.5','Plants','70\$'),
//     Item('Chair','images/chair2.png','4','Chair','90\$'),

//   ];

}