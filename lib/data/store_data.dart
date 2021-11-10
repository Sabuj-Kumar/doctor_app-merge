class Store {
  final String title;
  final String name;
  final String adress;
  final String imageLink;

  Store(this.title, this.name, this.adress, this.imageLink);
}

class StoreData {
  static List<Store> storeData = [
    Store(
        "Bismillah Store",
        "Bojlo Miya",
        "1A-005 1st Floor Jamuna Futer Park, KA-224, kuril, Progoti Shoroni,Dhaka 1229",
        "assets/images/Man.png"),
    Store(
        "Vai Vai Genaral Store",
        "Atik Hossain",
        "38 Hazi Para Jame Mosjid Rd. Badda,Dhaka 1212",
        "assets/images/boy.png"),
  ];
}
