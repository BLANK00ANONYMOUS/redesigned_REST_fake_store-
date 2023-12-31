// ignore_for_file: deprecated_member_use

import 'package:fake_store_assignment_3/imports.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  height: 170.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 100.0,
                        width: 100.0,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: CircleAvatar(
                          backgroundImage: AssetImage('images/face_image.jpg'),
                          backgroundColor: Colors.yellow,
                        ),
                      ),
                      const SizedBox(width: 15.0),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextBuilder(
                            text: 'Utkarsh',
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            textOverflow: TextOverflow.ellipsis,
                          ),
                          TextBuilder(
                            text: 'utkarsh@gmail.com',
                            fontSize: 15.0,
                            fontWeight: FontWeight.normal,
                            textOverflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10.0),
                Container(
                  height: 400,
                  child: ListView(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Home()));
                        },
                        child: ListTile(
                          leading: Icon(Icons.home, color: Colors.black),
                          title: TextBuilder(
                              text: "Home",
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => Cart()));
                        },
                        child: ListTile(
                          leading: Icon(
                            Icons.shopping_bag,
                            color: Colors.black,
                          ),
                          title: TextBuilder(
                              text: "Cart",
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      InkWell(
                        onTap: _launchURL,
                        child: ListTile(
                          leading: Icon(Icons.code, color: Colors.black),
                          title: TextBuilder(
                              text: "Source code",
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      InkWell(
                        onTap: _createEmail,
                        child: ListTile(
                          leading: Icon(Icons.email, color: Colors.black),
                          title: TextBuilder(
                              text: "Contact",
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            height: 100.0,
            child: Column(
              children: [
                AppName(),
                TextBuilder(text: 'E-commerce App using FakeStore Api.'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _launchURL() async {
    const url =
        "https://github.com/BLANK00ANONYMOUS/redesigned_REST_fake_store-";
    await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';
  }

  _createEmail() async {
    const emailAddress = 'mailto:utkarshchauhan1999@gmail.com';
    await canLaunch(emailAddress)
        ? await launch(emailAddress)
        : throw 'Could not launch $emailAddress';
  }
}
