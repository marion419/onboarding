import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:setstate_limit_sample/default_item.dart';
import 'package:setstate_limit_sample/default_widget_tree.dart';
import 'package:setstate_limit_sample/product_controller.dart';
import 'package:setstate_limit_sample/string_utils.dart';

class StatefulWidgetSample extends StatefulWidget {
  StatefulWidgetSample({Key? key}) : super(key: key);

  @override
  State<StatefulWidgetSample> createState() => _StatefulWidgetSampleState();
}

class _StatefulWidgetSampleState extends State<StatefulWidgetSample> {
  Set<String> products = {};
  Set<String> leftProducts = {};
  Set<String> rightProducts = {};

  void update() => setState(() {});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('즐겨찾는 상품')),
      body: Column(
        children: [
          DefaultWidgetTree(
            leftZoneItems: leftProducts,
            rightZoneItems: rightProducts,
            removeItem: (String item, bool isLeftZone) {
              if (isLeftZone) {
                leftProducts.remove(item);
              } else {
                rightProducts.remove(item);
              }
              products.add(item);
              update();
            },
          ),
          const Divider(height: 1, color: Colors.grey),
          Expanded(
            child: SingleChildScrollView(
              child: GetBuilder<ProductController>(
                builder: (controller) {
                  return Column(
                    children: List.generate(
                      controller.products.length,
                      (index) => DefaultItem(
                        item: controller.products.toList()[index],
                        pushZone: (bool isLeftZone, String item) {
                          if (isLeftZone) {
                            leftProducts.add(item);
                          } else {
                            rightProducts.add(item);
                          }
                          products.remove(item);
                          update();
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          onPressed: () {
            Get.find<ProductController>()
                .addProduct(StringUtils.getRandomString(2));
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
