import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AdminPageProduct extends StatefulWidget {
  const AdminPageProduct({Key? key}) : super(key: key);

  @override
  State<AdminPageProduct> createState() => _AdminPageProductState();
}

class _AdminPageProductState extends State<AdminPageProduct> {
  final TextEditingController nameTe = TextEditingController();

  final TextEditingController priceTe = TextEditingController();

  final TextEditingController colorTe = TextEditingController();

  final TextEditingController fzimgUrlTe = TextEditingController();

  final TextEditingController imgUrl1Te = TextEditingController();

  final TextEditingController imgUrl2Te = TextEditingController();

  final TextEditingController imgUrl3Te = TextEditingController();

  final TextEditingController categoryTe = TextEditingController();

  final TextEditingController detailsTe = TextEditingController();

  String categoryStr = 'Jeans';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextField(
                controller: nameTe,
                decoration: const InputDecoration(hintText: 'name'),
              ),
              TextField(
                controller: priceTe,
                decoration: const InputDecoration(hintText: 'price'),
              ),
              DropdownButton(
                value: categoryStr,
                items: const [
                  DropdownMenuItem(
                    value: 'Jeans',
                    child: Text(
                      "Jeans",
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'Shirt',
                    child: Text(
                      "Shirt",
                    ),
                  ),
                  DropdownMenuItem(
                    value: 'T-Shirt',
                    child: Text(
                      "T-Shirt",
                    ),
                  )
                ],
                onChanged: (value) {
                  setState(() {
                    categoryStr = value.toString();
                  });
                },
              ),
              TextField(
                controller: colorTe,
                decoration: const InputDecoration(hintText: 'color'),
              ),
              TextField(
                controller: detailsTe,
                decoration: const InputDecoration(hintText: 'shortDetails'),
              ),
              TextField(
                controller: fzimgUrlTe,
                decoration: const InputDecoration(hintText: 'fullSizeimgUrl'),
              ),
              TextField(
                controller: imgUrl1Te,
                decoration: const InputDecoration(hintText: 'imgUrl1'),
              ),
              TextField(
                  controller: imgUrl2Te,
                  decoration: const InputDecoration(hintText: 'imgUrl2')),
              TextField(
                controller: imgUrl3Te,
                decoration: const InputDecoration(hintText: 'imgUrl3'),
              ),
              ElevatedButton(
                  onPressed: () async {
                    await FirebaseFirestore.instance
                        .collection("products")
                        .doc('vDHaLVPbXrhLwacE1Gbh')
                        .update({
                      'size': ['28', '30', '32', '34', '36', '38', '40'],
                    });
                    log('sucess');
                    return;
                    log("${int.parse(priceTe.value.text)}");

                    await FirebaseFirestore.instance
                        .collection("products")
                        .doc()
                        .set({
                      'productName': nameTe.value.text,
                      'category': categoryStr,
                      'shortDescription': detailsTe.value.text,
                      'price': int.parse(priceTe.value.text),
                      'size': [28, 30, 32, 34, 36, 38, 40],
                      'color': colorTe.value.text,
                      'fullSizeImgPath': fzimgUrlTe.value.text,
                      'imgPath1': imgUrl1Te.value.text,
                      'imgPath2': imgUrl2Te.value.text,
                      'imgPath3': imgUrl3Te.value.text,
                    });

                    setState(() {
                      nameTe.clear();
                      priceTe.clear();
                      colorTe.clear();
                      fzimgUrlTe.clear();
                      imgUrl1Te.clear();
                      imgUrl2Te.clear();
                      imgUrl3Te.clear();
                    });
                  },
                  child: const Text("Submit"))
            ],
          ),
        ),
      ),
    );
  }
}
