import 'package:flutter/material.dart';



class Drawerfile extends StatefulWidget {
  @override
  _DrawerfileState createState() => _DrawerfileState();
}

class _DrawerfileState extends State<Drawerfile> {
  List<DrawerItemModel> drawerItemModel;

  @override
  void initState() {
    super.initState();
    addDrawerItem();
  }

  addDrawerItem() {
    drawerItemModel = List<DrawerItemModel>();
    drawerItemModel.add(DrawerItemModel("ecommerce zone",
        "https://rukminim1.flixcart.com/www/50/50/promos/31/10/2016/f7634981-4fd5-4127-9b93-9f57606dccd3.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Electronics",
        "https://rukminim1.flixcart.com/www/50/50/promos/31/10/2016/f7634981-4fd5-4127-9b93-9f57606dccd3.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Fashion",
        "https://rukminim1.flixcart.com/www/50/50/promos/30/10/2016/39d573db-dd62-430a-8166-0dcc53b6f299.png?q=80"));
    
    
    
    drawerItemModel.add(DrawerItemModel("My Orders",
        "https://rukminim1.flixcart.com/www/50/50/promos/10/03/2017/b7a79d1a-e088-4c4b-951f-9b8214719cc9.png?q=80"));
    
    drawerItemModel.add(DrawerItemModel("My Cart",
        "https://rukminim1.flixcart.com/www/50/50/promos/10/03/2017/920f4fcd-8977-43a9-9014-abcad558de8d.png?q=80"));
    drawerItemModel.add(DrawerItemModel("My Wishlist",
        "https://rukminim1.flixcart.com/www/50/50/promos/10/03/2017/1f81361d-9a8e-494a-bd15-6d647c9bd8a7.png?q=80"));
    drawerItemModel.add(DrawerItemModel("My Account",
        "https://rukminim1.flixcart.com/www/50/50/promos/07/04/2016/c35cca9e-2d7a-4583-9770-32a97ddf1c9b.png?q=80"));
    drawerItemModel.add(DrawerItemModel("Notification Preferences", null));
    
    
    drawerItemModel.add(DrawerItemModel("Help Centre", null));
    drawerItemModel.add(DrawerItemModel("Legal", null));
  }

  buildItem(BuildContext context, int index) {
    if (drawerItemModel[index].imageRes != null) {
      return Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 10),
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Image.network(
                    drawerItemModel[index].imageRes,
                    height: 15,
                    width: 15,
                  ),
                ),
                Expanded(
                  flex: 10,
                  child: Text(
                    drawerItemModel[index].name,
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
          ),
          index == 0 || index == 8 || index == 10 || index == 15
              ? Container(
                  color: Colors.grey,
                  height: 1,
                )
              : SizedBox(
                  height: 0,
                )
        ],
      );
    } else {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10, top: 10, left: 20),
        child: Text(
          drawerItemModel[index].name,
          style: TextStyle(fontSize: 15),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        Container(
          height: size.height / 10,
          color: Color(0xff2874F0),
          child: Center(
            child: ListTile(
              title: Text(
                'Home',
                style: TextStyle(color: Colors.white),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              trailing:Image.asset("assets/flutter2.png", height: size.height / 20,
                width: size.width/10,)
            ),
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: drawerItemModel.length,
          itemBuilder: (context, index) {
            return buildItem(context, index);
          },
        )
      ],
    );
  }
}

class DrawerItemModel {
  String _name;
  String _imageRes;

  DrawerItemModel(this._name, this._imageRes);

  String get imageRes => _imageRes;

  String get name => _name;
}
