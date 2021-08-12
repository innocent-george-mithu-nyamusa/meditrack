import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meditrack/utilities/utlities.dart';

class ProfileScreen extends StatefulWidget {

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: screenHeight * 0.15,
                      width: screenWidth * 0.3,
                      padding: EdgeInsets.all(3.0),
                      decoration:
                          BoxDecoration(shape: BoxShape.circle, color: primaryBlue),
                      child: CircleAvatar(
                        radius: screenWidth * 0.1,
                        backgroundImage: AssetImage("assets/user.jpeg"),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Shannesse Michelle",
                          style: TextStyle(
                            fontFamily: "Varela",
                              color: primaryBlue,
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 10.0,
                          bottom: 0.0,
                        ),
                        child: Text(
                          "@shanneesemichelle",
                          style: TextStyle(
                              color: primaryDarkGrey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          "5 Next of Kin",
                          style: TextStyle(
                            fontSize: 12,
                            color: primaryDarkGrey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 16.0, bottom: 2.0, ),
                        child: Text(
                          "Response Rating",
                          style: TextStyle(
                            color: primaryDarkGrey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow,),
                            Icon(Icons.star, color: Colors.yellow,),
                            Icon(Icons.star, color: Colors.yellow,),
                            Icon(Icons.star_half, color: Colors.yellow,),
                            Icon(Icons.star, color: primaryDarkGrey,),
                          ],
                        )
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ListTile(
                    minVerticalPadding: 0.1,
                    horizontalTitleGap: 1.0,
                    leading: Icon(
                      Icons.email,
                      color: primaryBlue,
                    ),
                    title: Text(
                      "jamesauthor@gmail.com",
                      style: TextStyle(
                        color: primaryDarkGrey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.edit, color: primaryBlue,size: 20.0,),
                    ),
                  ),
                  ListTile(
                    horizontalTitleGap: 1.0,
                    leading: Icon(
                      Icons.phone,
                      color: primaryBlue,
                    ),
                    title: Text(
                      "+263 773 678 782",
                      style: TextStyle(
                        color: primaryDarkGrey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.edit, color: primaryBlue, size: 20.0,),
                    ),
                  ),
                  ListTile(
                    horizontalTitleGap: 1.0,
                    leading: Icon(
                      Icons.location_on,
                      color: primaryBlue,
                    ),
                    title: Text(
                      "Zimbabwe, Harare, GlenView",
                      style: TextStyle(
                        color: primaryDarkGrey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: (){},
                      icon: Icon(Icons.edit, color: primaryBlue,size: 20.0,),
                    ),
                  )
                ],
              ),
            ),
            Divider(
              thickness: 1.0,
              color: Colors.black26,
              indent: 40.0,
              endIndent: 40.0,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListTile(
                    selectedTileColor: Colors.white,
                    enabled: true,
                    minVerticalPadding: 0.1,
                    horizontalTitleGap: 1.0,
                    leading: Icon(
                      Icons.person,
                      color: primaryBlue,
                    ),
                    title: Text(
                      "Next of kins (5)",
                      style: TextStyle(
                        color: primaryDarkGrey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: primaryBlue,
                      size: 15.0,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  color: Colors.black26,
                  indent: 40.0,
                  endIndent: 40.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListTile(
                    minVerticalPadding: 0.1,
                    horizontalTitleGap: 1.0,
                    leading: Icon(
                      Icons.backpack_outlined,
                      color: primaryBlue,
                    ),
                    title: Text(
                      "Services (10)",
                      style: TextStyle(
                        color: primaryDarkGrey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: primaryBlue,
                      size: 15.0,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  color: Colors.black26,
                  indent: 40.0,
                  endIndent: 40.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListTile(
                    minVerticalPadding: 0.1,
                    horizontalTitleGap: 1.0,
                    leading: Icon(
                      Icons.settings,
                      color: primaryBlue,
                    ),
                    title: Text(
                      "Settings",
                      style: TextStyle(
                        color: primaryDarkGrey,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: primaryBlue,
                      size: 15.0,
                    ),
                  ),
                ),
                Divider(
                  thickness: 1.0,
                  color: Colors.black26,
                  indent: 40.0,
                  endIndent: 40.0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
