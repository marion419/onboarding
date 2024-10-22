import 'package:flutter/material.dart';
import 'package:setstate_limit_sample/string_utils.dart';

class FullCodeStatefulWidgetSample extends StatefulWidget {
  const FullCodeStatefulWidgetSample({super.key});

  @override
  State<FullCodeStatefulWidgetSample> createState() =>
      _FullCodeStatefulWidgetSampleState();
}

class _FullCodeStatefulWidgetSampleState
    extends State<FullCodeStatefulWidgetSample> {
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
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.all(8),
                  height: 200,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: SingleChildScrollView(
                    child: Wrap(
                      children: List.generate(
                        leftProducts.length,
                        (index) => Container(
                          margin: const EdgeInsets.all(3),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 50,
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.blue),
                                color: Colors.blue.shade50,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'tag',
                                      style: const TextStyle(
                                          fontSize: 13, color: Colors.blue),
                                    ),
                                  ),
                                  const Positioned(
                                    right: 3,
                                    child: Icon(
                                      Icons.close,
                                      size: 14,
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    height: 200,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: SingleChildScrollView(
                      child: Wrap(
                        children: List.generate(
                          rightProducts.length,
                          (index) => Container(
                            margin: const EdgeInsets.all(3),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 50,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.blue),
                                  color: Colors.blue.shade50,
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        'tag',
                                        style: const TextStyle(
                                            fontSize: 13, color: Colors.blue),
                                      ),
                                    ),
                                    const Positioned(
                                      right: 3,
                                      child: Icon(
                                        Icons.close,
                                        size: 14,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.all(8),
                  height: 200,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: SingleChildScrollView(
                    child: Wrap(
                      children: List.generate(
                        leftProducts.length,
                        (index) => Container(
                          margin: const EdgeInsets.all(3),
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 50,
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                border: Border.all(color: Colors.blue),
                                color: Colors.blue.shade50,
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'tag',
                                      style: const TextStyle(
                                          fontSize: 13, color: Colors.blue),
                                    ),
                                  ),
                                  const Positioned(
                                    right: 3,
                                    child: Icon(
                                      Icons.close,
                                      size: 14,
                                      color: Colors.blue,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
                const SizedBox(width: 8),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    height: 200,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    child: SingleChildScrollView(
                      child: Wrap(
                        children: List.generate(
                          rightProducts.length,
                          (index) => Container(
                            margin: const EdgeInsets.all(3),
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 50,
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(color: Colors.blue),
                                  color: Colors.blue.shade50,
                                ),
                                child: Stack(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 8.0),
                                      child: Text(
                                        'tag',
                                        style: const TextStyle(
                                            fontSize: 13, color: Colors.blue),
                                      ),
                                    ),
                                    const Positioned(
                                      right: 3,
                                      child: Icon(
                                        Icons.close,
                                        size: 14,
                                        color: Colors.blue,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(height: 1, color: Colors.grey),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: List.generate(
                  products.length,
                  (index) => Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('left'),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                          child: Text(
                        'item',
                        textAlign: TextAlign.center,
                      )),
                      const SizedBox(width: 20),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text('right'),
                        ),
                      )
                    ]),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Builder(
        builder: (context) => FloatingActionButton(
          onPressed: () {
            products.add(StringUtils.getRandomString(2));
            update();
          },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
