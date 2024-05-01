import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalTab extends StatelessWidget {
  static const String routeName = "personal";

  const PersonalTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFEF2A39),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions:  [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: InkWell(
              onTap: (){},
              child: const Icon(
                Icons.settings,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child: const Icon(
                  Icons.person,
                  size: 100,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom),
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(35),
                  topLeft: Radius.circular(35),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: "Mohamed",
                        hintStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        label: const Text("Name"),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: "Example@gmail.com",
                        hintStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        label: const Text("Email"),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: "Enter Your Address",
                        hintStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        label: const Text("Delivery Address"),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        hintText: "Password",
                        hintStyle: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                        label: const Text("Password"),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Divider(
                      height: 5,
                      color: Colors.grey,
                      thickness: 1,
                    ),
                    const SizedBox(height: 20,),
                    InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Text(
                            "Payment Details",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF808080),
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios,color: Color(0xFF808080),)
                        ],
                      ),
                    ),
                    const SizedBox(height: 30,),
                    InkWell(
                      onTap: () {},
                      child: const Row(
                        children: [
                          Text(
                            "Order History",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF808080),
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios,color: Color(0xFF808080),)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
