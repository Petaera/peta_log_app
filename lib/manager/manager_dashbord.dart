import 'package:flutter/material.dart';

class ManagerDashbord extends StatelessWidget {
  const ManagerDashbord({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Manager Portal',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ManagerDashboard(),
    );
  }
}

class ManagerDashboard extends StatelessWidget {
  const ManagerDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            const Icon(Icons.directions_car, size: 24),
            const SizedBox(width: 8),
            const Text("Manager Portal"),
            const Spacer(),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.bar_chart),
              label: const Text("View Today's Stats"),
            ),
            const SizedBox(width: 16),
            const CircleAvatar(child: Icon(Icons.person)),
            const SizedBox(width: 8),
            const Text("manager@example.com"),
            const SizedBox(width: 16),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(child: Text("Manager Dashboard")),
            ListTile(title: Text("Dashboard")),
            ListTile(title: Text("Reports")),
            ListTile(title: Text("Settings")),
            ListTile(title: Text("Logout")),
          ],
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isMobile = constraints.maxWidth < 700;

          return SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: isMobile
                ? Column(
                    children: [
                      vehicleEntryForm(isMobile),
                      const SizedBox(height: 20),
                      scratchMarkingCard(),
                    ],
                  )
                : Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: vehicleEntryForm(isMobile)),
                      const SizedBox(width: 20),
                      Expanded(child: scratchMarkingCard()),
                    ],
                  ),
          );
        },
      ),
    );
  }

  Widget vehicleEntryForm(bool isMobile) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Vehicle Entry Details",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(labelText: 'Vehicle Number'),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField(
                    decoration: const InputDecoration(
                      labelText: "Select vehicle type",
                    ),
                    items: const [],
                    onChanged: (_) {},
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: DropdownButtonFormField(
                    decoration: const InputDecoration(
                      labelText: "Select service",
                    ),
                    items: const [],
                    onChanged: (_) {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Entry Type & Amount
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                ChoiceChip(
                  label: const Text("Normal"),
                  selected: true,
                  onSelected: (_) {},
                ),
                ChoiceChip(
                  label: const Text("Workshop"),
                  selected: false,
                  onSelected: (_) {},
                ),
                SizedBox(
                  width: isMobile ? double.infinity : 100,
                  child: TextFormField(
                    initialValue: "₹500",
                    decoration: const InputDecoration(labelText: "Amount"),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),
            const Text("Payment Mode"),
            const SizedBox(height: 8),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.credit_card),
                    label: const Text("Cash"),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: OutlinedButton.icon(
                    icon: const Icon(Icons.qr_code),
                    label: const Text("UPI"),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const TextField(
              decoration: InputDecoration(labelText: "Discount (Optional)"),
            ),
            const SizedBox(height: 12),
            const TextField(
              maxLines: 3,
              decoration: InputDecoration(labelText: "Remarks"),
            ),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Submit Entry"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget scratchMarkingCard() {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Scratch Marking",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey.shade200,
              child: const Center(child: Text("Draw scratches here")),
            ),
            const SizedBox(height: 12),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ElevatedButton.icon(
                  icon: const Icon(Icons.save),
                  label: const Text("Save Markings"),
                  onPressed: () {},
                ),
                OutlinedButton.icon(
                  icon: const Icon(Icons.clear_all),
                  label: const Text("Clear All"),
                  onPressed: () {},
                ),
                OutlinedButton(child: const Text("100%"), onPressed: () {}),
                IconButton(onPressed: () {}, icon: const Icon(Icons.zoom_in)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.refresh)),
              ],
            ),
            const SizedBox(height: 12),
            const Text(
              "Draw directly on the car diagram to mark scratches or damages. Use your mouse to draw red lines. Use zoom controls for detailed marking. The marked image will be saved with the entry.",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
