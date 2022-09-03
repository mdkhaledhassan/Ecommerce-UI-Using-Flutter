import 'package:Ecommerce/models/model.dart';
import 'package:Ecommerce/order_details.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Color(0xfff2f2f4),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xffb9b8c2),
                      size: 20,
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      border: Border.all(color: Color(0xfff2f2f4)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Icon(
                      Icons.search,
                      color: Color(0xffb9b8c2),
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Hi-Fi Shop & Service",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Audio shop on Rustaveli Ave 57.",
              style: TextStyle(
                  color: Color(0xff939393),
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "This shop offers both products and services",
              style: TextStyle(
                  color: Color(0xff939393),
                  fontWeight: FontWeight.bold,
                  fontSize: 12),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Products",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "${model.length}",
                      style: TextStyle(
                          color: Color(0xffc0c0c0),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
                Text(
                  "Show all",
                  style: TextStyle(
                      color: Color(0xff7a9aff),
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                height: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: ListView.builder(
                  itemCount: model.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => OrderDetails(
                                img: model[index].img,
                                name: model[index].name,
                                price: model[index].price),
                          ));
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xfff2f2f2),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network(
                                      '${model[index].img}',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "${model[index].name}",
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "\$${model[index].price}",
                                        style: TextStyle(
                                            color: Color(0xffc0c0c0),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                )),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "Accessories",
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    Text(
                      "${second_Model.length}",
                      style: TextStyle(
                          color: Color(0xffc0c0c0),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ],
                ),
                Text(
                  "Show all",
                  style: TextStyle(
                      color: Color(0xff7a9aff),
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
                height: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(12)),
                child: ListView.builder(
                  itemCount: model.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => OrderDetails(
                                img: second_Model[index].img,
                                name: second_Model[index].name,
                                price: second_Model[index].price),
                          ));
                        },
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 4,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Color(0xfff2f2f2),
                                      borderRadius: BorderRadius.circular(12)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(12),
                                    child: Image.network(
                                      '${second_Model[index].img}',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "${second_Model[index].name}",
                                        style: TextStyle(
                                            color: Color(0xff000000),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "${second_Model[index].av}",
                                        style: TextStyle(
                                            color: second_Model[index].av ==
                                                    "available"
                                                ? Colors.green
                                                : Colors.red,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "\$${second_Model[index].price}",
                                        style: TextStyle(
                                            color: Color(0xffc0c0c0),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}
