import 'package:flutter/material.dart';
import 'package:mrec_consultance/screens/login_screen.dart';
import 'package:mrec_consultance/widgets/switch.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 71, 69, 84),
      appBar: AppBar(
        //leading: BackButton(color: Colors.white),
        automaticallyImplyLeading: false,
        title: Center(
            child: Text('Profile', style: TextStyle(color: Colors.white))),
        backgroundColor: const Color.fromARGB(255, 71, 69, 84),
        elevation: 0,
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50), topRight: Radius.circular(50)),
        child: Container(
          color: Colors.white,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 6,
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      image: DecorationImage(
                        //image: NetworkImage(user.ImageUrl),
                        image: AssetImage('assets/images/MREC_logo.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text(
                          'Name',
                          style: const TextStyle(
                            fontSize: 20.0,
                            letterSpacing: 0.5,
                            color: Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Email',
                          style: const TextStyle(
                            fontSize: 15.0,
                            letterSpacing: 0.5,
                            color: Color.fromARGB(255, 17, 79, 90),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Card(
                    color: Colors.white,
                    shadowColor: Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      //set border radius more than 50% of height and width to make circle
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Your Details:',
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 17,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const Text(
                                "Name :",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'name',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 17, 79, 90),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const Text(
                                "Email :",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'mail',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Color.fromARGB(255, 17, 79, 90)),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            children: [
                              const Text(
                                "Mobile :",
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'name',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color.fromARGB(255, 17, 79, 90),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SwitchClass(
                    title: "Notifications",
                    desc: "Turn on or of notifications",
                  ),
                  SwitchClass(
                    title: "Dark Mode",
                    desc: "Turn on or of DarkMode",
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      //   authservice.signOut(context);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    icon: Icon(
                      Icons.logout,
                      color: Colors.white,
                    ),
                    label: Text(
                      'logout',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 71, 69, 84)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
