import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:milk_delivery_app/src/presentation/select_milk_packets_page.dart';

class ConfirmMilkSelectionPage extends StatelessWidget {
  final SelectMilkPacketsController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Confirm Milk Selection'),
        automaticallyImplyLeading: true, // This will remove the Back button
      ),
      body: Obx(() {
        return ListView.builder(
          itemCount: controller.selectedMilkPackets.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              leading: Image.asset(controller.selectedMilkPackets[index]
                  .photo), // Make sure the image path is correct
              title: Text(controller.selectedMilkPackets[index].name),
              subtitle: Text(
                  '₹${controller.selectedMilkPackets[index].price.toStringAsFixed(2)}'), // Changed $ to ₹
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle the action when the user confirms their selection
          print(
              'User confirmed these milk packets: ${controller.selectedMilkPackets}');
        },
        child: Icon(Icons.check),
        tooltip: 'Confirm',
      ),
      backgroundColor:
          Colors.orange[100], // Match the background color with SignInPage
    );
  }
}
