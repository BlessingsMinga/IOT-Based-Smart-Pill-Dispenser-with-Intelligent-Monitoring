import 'package:flutter/material.dart';

class NewSchedulePage extends StatefulWidget {
  const NewSchedulePage({super.key});

  @override
  NewSchedulePageState createState() => NewSchedulePageState();
}

class NewSchedulePageState extends State<NewSchedulePage> {
  String selectedIcon = '';
  String selectedDosage = '1';
  String selectedType = 'tablets';
  bool remindMe = true;

  List<String> icons = ['💊', '💣', '🧴', '🚫'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New Schedule', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 12.0),
            child: Icon(Icons.qr_code, color: Colors.black),
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: const AssetImage('assets/images/munthu.png'),
              backgroundColor: Colors.grey[200],
            ),
            const SizedBox(height: 16),
            const Text(
              'Add Schedule',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text('Choose Icon', style: TextStyle(fontSize: 16)),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: icons.map((icon) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIcon = icon;
                    });
                  },
                  child: CircleAvatar(
                    backgroundColor: selectedIcon == icon
                        ? Colors.blue[100]
                        : Colors.grey[200],
                    child: Text(icon, style: const TextStyle(fontSize: 24)),
                    radius: 30,
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 24),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Name of medicine',
                hintText: 'type here...',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedDosage,
                    decoration: const InputDecoration(
                      labelText: 'Dosage',
                      border: OutlineInputBorder(),
                    ),
                    items: List.generate(10, (i) => (i + 1).toString())
                        .map((dose) => DropdownMenuItem(
                      value: dose,
                      child: Text(dose),
                    ))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        selectedDosage = val!;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: DropdownButtonFormField<String>(
                    value: selectedType,
                    decoration: const InputDecoration(
                      labelText: 'Type of medicine',
                      border: OutlineInputBorder(),
                    ),
                    items: ['tablets', 'syrup', 'injection']
                        .map((type) => DropdownMenuItem(
                      value: type,
                      child: Text(type),
                    ))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        selectedType = val!;
                      });
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            SwitchListTile(
              title: const Text('Remind me'),
              value: remindMe,
              onChanged: (val) {
                setState(() {
                  remindMe = val;
                });
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              child: const Text(
                'Add Schedule',
                style: TextStyle(fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
