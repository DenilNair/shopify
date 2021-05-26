class itemDetails{
  String _name;
  int _id;
  double _costt;

  itemDetails(this._name, this._id, this._costt);

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get id => _id;

  double get costt => _costt;

  set costt(double value) {
    _costt = value;
  }

  set id(int value) {
    _id = value;
  }
  static List <itemDetails>items=[];

  static List <itemDetails>itemsOrdered=[];
  static void   additemDettails(itemDetails item){
    items.add(item);

  }
  static void   additemtoOrder(itemDetails item){
    itemsOrdered.add(item);

  }

  static void   removeitemDettails(itemDetails item){
    items.remove(item);

  }
  static void   removeitemtoOrder(itemDetails item){
    itemsOrdered.remove(item);

  }
}