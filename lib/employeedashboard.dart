import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EmployeeDashboard extends StatefulWidget {
  const EmployeeDashboard({super.key});

  @override
  State<EmployeeDashboard> createState() => _EmployeeDashboardState();
}

class _EmployeeDashboardState extends State<EmployeeDashboard> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.of(context).size.height;
    final deviceWidth = MediaQuery.of(context).size.width;

    void AddTasks() {
      setState(() {
        // This call to setState tells the Flutter framework that something has
        // changed in this State, which causes it to rerun the build method below
        // so that the display can reflect the updated values. If we changed
        // _counter without calling setState(), then the build method would not be
        // called again, and so nothing would appear to happen.
      });
    }

    return Scaffold(
      backgroundColor: Colors.blue[200],
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 15),
            height: deviceHeight * 0.18,
            // color: Colors.black,
            child: const CircleAvatar(
              radius: 75,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                radius: 73,
                backgroundColor: Color.fromARGB(255, 66, 163, 242),
                child: CircleAvatar(
                  radius: 70,
                  backgroundImage: AssetImage(
                    'Images/employee.png',
                    // D:\VS STUDIO\Ha\CoderzInc\Images\employee.png
                  ),
                ),
              ),
            ),
          ),
          Container(
            child: Text(
              "Atharva Kshiragar",
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                // fontFamily:
              ),
            ),
          ),
          Container(
            child: Text("10/10/10",
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                  // fontFamily:
                )),
          ),
          Container(
            child: SizedBox(
              height: 20,
              width: 200,
              child: Divider(color: Colors.white),
            ),
          ),
          Container(
              height: deviceHeight * 0.30,
              width: double.infinity,
              // color: Colors.green,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: LayoutBuilder(builder: (ctx, constraints) {
                return Column(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // SizedBox(
                      //   height: constraints.maxHeight * 0.01,
                      // ),
                      // Text('Please enter the details below to continue',),
                      Container(
                        height: constraints.maxHeight * 0.185,
                        width: deviceWidth * 0.90,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.date_range_outlined),
                            ),
                            Text(
                              " Task Description 1 ",
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: constraints.maxHeight * 0.01,
                      ),

                      Container(
                        height: constraints.maxHeight * 0.185,
                        width: deviceWidth * 0.90,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.date_range_outlined),
                            ),
                            Text(" Task Description 2 "),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: constraints.maxHeight * 0.01,
                      ),

                      Container(
                        height: constraints.maxHeight * 0.185,
                        width: deviceWidth * 0.90,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.date_range_outlined),
                            ),
                            Text(
                              " Task Description 3 ",
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: constraints.maxHeight * 0.01,
                      ),

                      Container(
                        height: constraints.maxHeight * 0.185,
                        width: deviceWidth * 0.90,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.date_range_outlined),
                            ),
                            Text(
                              " Task Description 4 ",
                            ),
                          ],
                        ),
                      ),

                      SizedBox(
                        height: constraints.maxHeight * 0.01,
                      ),

                      Container(
                        height: constraints.maxHeight * 0.185,
                        width: deviceWidth * 0.90,
                        decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.date_range_outlined),
                            ),
                            Text(
                              " Task Description 5 ",
                            ),
                          ],
                        ),
                      ),
                    ]);
              }))
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: AddTasks,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
