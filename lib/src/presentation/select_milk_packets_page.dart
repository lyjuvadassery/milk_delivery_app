import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:milk_delivery_app/src/data/milk_packet.dart';
import 'package:milk_delivery_app/src/presentation/confirm_milk_selection_page.dart';

class SelectMilkPacketsController extends GetxController {
  var milkPackets = [
    amulCowFreshMilk,
    amulGoldFullCream,
    amulMotiTonedMilk,
    amulTaazaHomogenisedToned,
    amulTaazaToned,
    motherDairyCowFresh,
    motherDairyFullCream,
    motherDairyTonedFresh,
  ].obs;

  var selectedMilkPackets = <MilkPacket>[].obs;
}

class SelectMilkPacketsPage extends StatelessWidget {
  final controller = Get.put(SelectMilkPacketsController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Select Milk Packets',
          textAlign: TextAlign.center,
        ),
        automaticallyImplyLeading: false, // This will remove the Back button
      ),
      backgroundColor: Colors.orange[100],
      body: GetBuilder<SelectMilkPacketsController>(
        builder: (controller) {
          return GridView.builder(
            itemCount: controller.milkPackets.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Change this number as per your requirement
              childAspectRatio: 1.0, // Adjust this value to scale up the photo
              mainAxisSpacing:
                  10.0, // Adjust this value to control the number of tiles per page
            ),
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  controller.selectedMilkPackets
                          .contains(controller.milkPackets[index])
                      ? controller.selectedMilkPackets
                          .remove(controller.milkPackets[index])
                      : controller.selectedMilkPackets
                          .add(controller.milkPackets[index]);
                  controller.update();
                },
                child: GridTile(
                  child: Container(
                    decoration: BoxDecoration(
                      color: controller.selectedMilkPackets
                              .contains(controller.milkPackets[index])
                          ? Colors.orange[200]
                          : null,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Image.asset(controller.milkPackets[index]
                              .photo), // Make sure the image path is correct
                        ),
                        Text(
                          controller.milkPackets[index].name,
                          textAlign: TextAlign.center,
                        ),
                        Text(
                            '₹${controller.milkPackets[index].price.toStringAsFixed(2)}'), // Changed $ to ₹
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(() => ConfirmMilkSelectionPage());
        },
        child: Icon(Icons.check),
        tooltip: 'Confirm selection',
      ),
    );
  }
}
