import 'package:ayurveda_ui/widgets/text_field_widget.dart';
import 'package:flutter/material.dart';

enum SingingCharacter { option1, option2 }

class ScreenRegister extends StatefulWidget {
  const ScreenRegister({super.key});

  @override
  _ScreenRegisterState createState() => _ScreenRegisterState();
}

class _ScreenRegisterState extends State<ScreenRegister> {
  List<String> location = ['Kozhikode', 'Wayanad', 'Kannur'];
  final hour = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  final minutes = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
  String? _selectedPaymentMethod;
  final TextEditingController _dateController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      setState(() {
        _dateController.text = "${pickedDate.toLocal()}".split(' ')[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(14),
              child: Text(
                "Register",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Name'),
                  TextFieldWidget(hintText: 'Enter your full name'),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  const Text("Whatsapp Number"),
                  TextFieldWidget(hintText: 'Enter your Whatsapp Number'),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  const Text("Address"),
                  TextFieldWidget(hintText: 'Enter your full address'),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  const Text("Location"),
                  DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      hintText: 'Choose your location',
                      border: OutlineInputBorder(),
                    ),
                    items:
                        location.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      // Handle change
                    },
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  const Text('Branch'),
                  DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      hintText: 'Select the branch',
                      border: OutlineInputBorder(),
                    ),
                    items:
                        location.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      // Handle change
                    },
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (BuildContext context) {
                              return SizedBox(
                                width: double.infinity,
                                height: screenSize.height * 1,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 50),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Choose treatment'),
                                      DropdownButtonFormField<String>(
                                        decoration: const InputDecoration(
                                          hintText: 'Choose prefered treatment',
                                          border: OutlineInputBorder(),
                                        ),
                                        items: location
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),
                                        onChanged: (String? newValue) {
                                          // Handle change
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 140, 225, 143),
                        ),
                      ),
                      child: const Text(
                        '+ Add Treatments',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  const Text('Total amount'),
                  TextFieldWidget(hintText: ''),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  const Text('Payment Method'),
                  Row(
                    children: [
                      Row(
                        children: [
                          Radio<String>(
                            value: 'Cash',
                            groupValue: _selectedPaymentMethod,
                            onChanged: (String? value) {
                              setState(() {
                                _selectedPaymentMethod = value;
                              });
                            },
                          ),
                          const Text('Cash')
                        ],
                      ),
                      Row(
                        children: [
                          Radio<String>(
                            value: 'Card',
                            groupValue: _selectedPaymentMethod,
                            onChanged: (String? value) {
                              setState(() {
                                _selectedPaymentMethod = value;
                              });
                            },
                          ),
                          const Text('Card')
                        ],
                      ),
                      Row(
                        children: [
                          Radio<String>(
                            value: 'UPI',
                            groupValue: _selectedPaymentMethod,
                            onChanged: (String? value) {
                              setState(() {
                                _selectedPaymentMethod = value;
                              });
                            },
                          ),
                          const Text('UPI')
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  const Text('Balance Amount'),
                  TextFieldWidget(hintText: ''),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  const Text('Treatment Date'),
                  TextField(
                    controller: _dateController,
                    decoration: InputDecoration(
                      hintText: 'Select date',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.calendar_today),
                        onPressed: () => _selectDate(context),
                      ),
                    ),
                    readOnly: true,
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  const Text('Treatment Time'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DropdownMenu(
                        hintText: 'hour',
                        dropdownMenuEntries: hour
                            .map<DropdownMenuEntry<dynamic>>((var value) =>
                                DropdownMenuEntry(
                                    value: value, label: value.toString()))
                            .toList(),
                      ),
                      DropdownMenu(
                        hintText: 'minutes',
                        dropdownMenuEntries: minutes
                            .map<DropdownMenuEntry<dynamic>>((var value) =>
                                DropdownMenuEntry(
                                    value: value, label: value.toString()))
                            .toList(),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: screenSize.height * 0.02,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 140, 225, 143),
                        ),
                      ),
                      child: const Text(
                        'Save',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
