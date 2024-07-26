class HomeComponent{
String? title;
String? image;

HomeComponent( this.title, this.image);
static List<HomeComponent>homeComponent=[
  HomeComponent('Living room', 'images/livingRoom.jpg'),
  HomeComponent('Wall Decoration', 'images/wallDecoration.jpg'),
  HomeComponent('Table Decoration', 'images/table.jpg'),



];
}