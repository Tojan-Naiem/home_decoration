class Item{
  String? title;
  String? image;
  String? rate;
  String? type;
  String? price;

  Item(this.title,this.image,this.rate,this.type,this.price);

  static List<Item>popluor=[
    Item('Table disk lump','images/lump.png','4.5','Lump','12\$'),
    Item('Painting Berry Plants','images/board.png','4.5','Paint','12\$'),
    Item('Decorative Plants','images/plant.png','4.5','Plants','70\$'),
    Item('Cuiouf','images/chair.png','4.5','Chair','12\$'),

  ];
static List<Item>news=[
    Item('Table disk lump','images/lump2.png','4.5','Lump','55\$'),
    Item('Cute Bed Cover','images/napkin.png','4','Paint','54\$'),
    Item('Inside Swing','images/swing.png','3.5','Plants','70\$'),
    Item('Chair','images/lump3.png','4','Chair','90\$'),

  ];
  static List<Item>bestSilling=[
    Item('Treasury','images/treasury.png','4.5','Lump','55\$'),
    Item('Buitiful Zina','images/zina.png','4','Paint','54\$'),
    Item('Cute cup for Coffee','images/cup.png','3.5','Plants','70\$'),
    Item('Home Chair','images/chair3.png','4','Chair','90\$'),

  ];

  static List<Item>livingRoom=[
    Item('Treasury','images/treasury.png','4.5','Lump','55\$'),
    Item('Buitiful Zina','images/zina.png','4','Paint','54\$'),
    Item('Cute cup for Coffee','images/cup.png','3.5','Plants','70\$'),
    Item('Home Chair','images/chair3.png','4','Chair','90\$'),
     Item('Table disk lump','images/lump.png','4.5','Lump','12\$'),
    Item('Painting Berry Plants','images/board.png','4.5','Paint','12\$'),
    Item('Decorative Plants','images/plant.png','4.5','Plants','70\$'),
    Item('Chair','images/chair.png','4.5','Chair','12\$'),
     Item('Table disk lump','images/lump2.png','4.5','Lump','55\$'),
    Item('Cute Bed Cover','images/napkin.png','4','Paint','54\$'),
    Item('Inside Swing','images/swing.png','3.5','Plants','70\$'),
    Item('Chair','images/lump3.png','4','Chair','90\$'),

  ];

  


}
class ShoppingCart{
static Map<Item,int> addItem={
// Item('Chair','images/lump3.png','4','Chair','90\$'):1,
};
static void addItemToCart(Item item){
  if(addItem.containsKey(item)){

      addItem[item] = addItem[item]! + 1;
  } else {
    addItem[item] = 1;
  }
}


}