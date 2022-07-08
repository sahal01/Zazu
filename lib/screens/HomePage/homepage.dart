import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Providers/Homeprovider/HomeProvider.dart';
import '../../utils/Styles.dart';
import '../../utils/colors.dart';
import '../Changepassword/ChangePassword.dart';
import '../Login/login.dart';
import '../ProductDetailPage/productdetail.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  // Initial Selected Value

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: AppColors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(80.0),
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: AppBar(
              centerTitle: true,
              automaticallyImplyLeading: true,
              leading: Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.dehaze_sharp),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              ),
              backgroundColor: AppColors.primary1,
              title: const Text('CLUB ZaZu'),
            ),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFF9D2D2),
                ),
                child: Text('CLUB ZaZu'),
              ),
              ListTile(
                title: const Text('Change Password'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChangePassword()),
                  );
                },
              ),
              ListTile(
                title: const Text('Logout'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Login()),
                  );
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_rounded,
                size: 30.0,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                size: 30.0,
              ),
              label: '',
            ),
          ],
        ),
        body: Consumer<HomeProvider>(builder: (context, provider, child) {
          return Column(
            children: [
              Container(
                  width: w,
                  height: 72,
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 13, bottom: 13),
                  color: AppColors.yellw,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: w / 1.2,
                        child: Container(
                          height: 55,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25.0),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 12,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Search',
                                      contentPadding: EdgeInsets.all(15.0)),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        topRight: Radius.circular(25),
                                        bottomRight: Radius.circular(25)),
                                    color: AppColors.searchbtn,
                                  ),
                                  child: IconButton(
                                    icon: const Icon(
                                      Icons.search,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {},
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      DropdownButton(

                          // Initial Value
                          value: provider.dropdownvalue,
                          hint: const Text('Select'),
                          underline: const SizedBox(),
                          // Down Arrow Icon
                          icon: const Icon(Icons.arrow_drop_down),

                          // Array list of items
                          items: provider.items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          // After selecting the desired option,it will
                          // change button value to selected value
                          onChanged: (String? newValue) {
                            provider.dropdown(newValue!);
                          }),
                    ],
                  )),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(15),
                  child: GridView.count(
                    // Create a grid with 2 columns. If you change the scrollDirection to
                    // horizontal, this produces 2 rows.
                    crossAxisCount: 2,
                    // Generate 100 widgets that display their index in the List.
                    children: List<Widget>.generate(30, (index) {
                      return GridTile(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProductDetailPage()),
                            );
                          },
                          child: Card(
                              color: AppColors.white,
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(color: Color(0xFFF6ADAD)),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15.0)),
                              ),
                              child: SizedBox(
                                width: w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Center(
                                      child: Image.asset(
                                          'assets/images/img_1.png',
                                          fit: BoxFit.cover),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 15.0, bottom: 10),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Name",
                                            style: Styles().normalS(
                                                fontW: FontWeight.normal,
                                                fontS: 18,
                                                color: AppColors.black),
                                          ),
                                          Text(
                                            "Price",
                                            style: Styles().normalS(
                                                fontW: FontWeight.normal,
                                                fontS: 17,
                                                color: AppColors.black),
                                          ),
                                          Text(
                                            "Colour/Size",
                                            style: Styles().normalS(
                                                fontW: FontWeight.normal,
                                                fontS: 17,
                                                color: AppColors.black),
                                          ),
                                          Text(
                                            "Stock",
                                            style: Styles().normalS(
                                                fontW: FontWeight.bold,
                                                fontS: 17,
                                                color: Colors.red),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ),
                      );
                    }),
                  ),
                ),
              )
            ],
          );
        }));
  }
}
