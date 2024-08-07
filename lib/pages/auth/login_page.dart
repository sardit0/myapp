import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void submitForm() {
    if (_formKey.currentState!.validate()) {
      // ignore: unnecessary_null_comparison
      // if (_selectedDate != null && _selectedReligion != null && _selectedGender != null) {
      //   Navigator.push(
      //     context,
      //     MaterialPageRoute(
      //       builder: (context) => DisplayPage(
      //         name: _emailController.text,
      //         email: _passwordController.text,
      //       ),
      //     ),
      //   );
      // }
    }
  }

  // Future<void> selectDate(BuildContext context) async {
  //   final DateTime? picked = await showDatePicker(
  //     context: context,
  //     initialDate: _selectedDate,
  //     firstDate: DateTime(1900),
  //     lastDate: DateTime(2100),
  //   );
  //   if (picked != null && picked != _selectedDate)
  //     setState(() {
  //       _selectedDate = picked;
  //     });
  // }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Login Form',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your password';
                      }
                      return null;
                    },
                  ),
                  // SizedBox(height: 20),
                  // ListTile(
                  //   contentPadding: EdgeInsets.zero,
                  //   title: Text(
                  //     // ignore: unnecessary_null_comparison
                  //     _selectedDate == null
                  //         ? 'Select Birth Date'
                  //         : 'Birth Date: ${DateFormat('dd/MM/yyyy').format(_selectedDate)}',
                  //   ),
                  //   onTap: () => selectDate(context),
                  // ),
                  // SizedBox(height: 20),
                  // DropdownButtonFormField<String>(
                  //   decoration: InputDecoration(
                  //     labelText: 'Religion',
                  //     border: OutlineInputBorder(
                  //       borderRadius: BorderRadius.circular(10),
                  //     ),
                  //   ),
                  //   value: _selectedReligion,
                  //   items: [
                  //     'Islam',
                  //     'Christian',
                  //     'Hindu',
                  //     'Buddhist',
                  //     'Other',
                  //   ]
                  //   .map((religion) => DropdownMenuItem(
                  //     value: religion,
                  //     child: Text(religion),
                  //   ))
                  //   .toList(),
                  //   onChanged: (value) {
                  //     setState(() {
                  //       _selectedReligion = value;
                  //     });
                  //   },
                  //   validator: (value) {
                  //     if (value == null) {
                  //       return 'Please select your religion';
                  //     }
                  //     return null;
                  //   },
                  // ),
                  // SizedBox(height: 20),
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: ListTile(
                  //         title: const Text('Male'),
                  //         leading: Radio<String>(
                  //           value: 'Male',
                  //           groupValue: _selectedGender,
                  //           onChanged: (value) {
                  //             setState(() {
                  //               _selectedGender = value;
                  //             });
                  //           },
                  //         ),
                  //       ),
                  //     ),
                  //     Expanded(
                  //       child: ListTile(
                  //         title: const Text('Female'),
                  //         leading: Radio<String>(
                  //           value: 'Female',
                  //           groupValue: _selectedGender,
                  //           onChanged: (value) {
                  //             setState(() {
                  //               _selectedGender = value;
                  //             });
                  //           },
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: submitForm,
                      child: Text('Submit'),
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()),
                        );
                      },
                      child: Text(
                        'Already have an account? Register here',
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
