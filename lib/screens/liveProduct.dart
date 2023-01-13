import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LiveProduct extends StatefulWidget {
  const LiveProduct({super.key});

  @override
  State<LiveProduct> createState() => _LiveProductState();
}

class _LiveProductState extends State<LiveProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: ElevatedButton(
          onPressed: () => Navigator.of(context).pop(),
          style: ElevatedButton.styleFrom(
              elevation: 0, backgroundColor: Colors.transparent),
          child: const Text(
            "Back",
            style: TextStyle(color: Color(0xFF737373), fontSize: 15),
          ),
        ),
        backgroundColor: const Color(0xffCFD0E5),
        title: const Text(
          "Going Live",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(children: [
            Column(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 15, top: 15),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "video information",
                      style: TextStyle(
                          color: Color(0xFF6667AB),
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    )),
                Container(
                    child: Column(
                  children: [
                    _buildTextField(
                        hintText: "Enter the thumbnail",
                        label: "Enter Thumbnail"),
                    _buildTextField(
                        hintText: "Enter the photo", label: "Enter Photo")
                  ],
                )),
              ],
            ),
            Column(
              children: [
                Container(
                    padding: EdgeInsets.only(left: 15, top: 15),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Product information",
                      style: TextStyle(
                          color: Color(0xFF6667AB),
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    )),
                Container(
                    child: Column(
                  children: [
                    _buildTextField(
                        hintText: "Enter The Product Name",
                        label: "Product name"),
                    _buildTextField(
                        hintText: "Enter The Product Description",
                        label: "Product Description"),
                    _buildTextField(
                        hintText: "Enter the Product Price",
                        label: "Product Price"),
                    _buildTextField(
                        hintText: "Enter the Product Url",
                        label: "Product Url"),
                    Column(
                      children: [
                        _buildTextField(
                            hintText: "Enter the Product Color",
                            label: "Product Available Colors"),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 5),
                              child: Text(
                                "#Blue",
                                style: TextStyle(
                                    color: Color(0xFF8081B9),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 5),
                              child: Text(
                                "#Black",
                                style: TextStyle(
                                    color: Color(0xFF8081B9),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 5),
                              child: Text(
                                "#Red",
                                style: TextStyle(
                                    color: Color(0xFF8081B9),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 5),
                              child: Text(
                                "#Yellow",
                                style: TextStyle(
                                    color: Color(0xFF8081B9),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 12, vertical: 5),
                              child: Text(
                                "#Green",
                                style: TextStyle(
                                    color: Color(0xFF8081B9),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        _buildTextField(
                            hintText: "Enter the Product Size",
                            label: "Product Available Size"),
                        Row(
                          children: const [
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 5),
                              child: Text(
                                "#28",
                                style: TextStyle(
                                    color: Color(0xFF8081B9),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 5),
                              child: Text(
                                "#30",
                                style: TextStyle(
                                    color: Color(0xFF8081B9),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 5),
                              child: Text(
                                "#32",
                                style: TextStyle(
                                    color: Color(0xFF8081B9),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 5),
                              child: Text(
                                "#34",
                                style: TextStyle(
                                    color: Color(0xFF8081B9),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 14, vertical: 5),
                              child: Text(
                                "#35",
                                style: TextStyle(
                                    color: Color(0xFF8081B9),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Container(
                        alignment: Alignment.bottomLeft,
                        margin: const EdgeInsets.only(left: 15, top: 6),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF6667AB),
                            ),
                            onPressed: () {},
                            child: const Text("Add Product")))
                  ],
                )),
              ],
            )
          ]),
        ),
      ),
    );
  }

  Widget _buildTextField({required String hintText, required String label}) {
    // new
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
      child: TextField(
        decoration: InputDecoration(
          isCollapsed: false,
          contentPadding: const EdgeInsets.only(bottom: 7),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black38),
          ),
          hintText: hintText,
          label: Text(
            label,
            style: const TextStyle(fontSize: 17, color: Color(0xFF71717A)),
          ),
        ),
        style: const TextStyle(color: Color(0xFF3F3F46), fontSize: 15),
      ),
    );
  }
}
