import 'package:divan_app/src/interface/Widget/custom_willpop_scope.dart';
import '../Themes/theme.dart';
import 'package:divan_app/src/core/helper/show_snakbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
// ignore: depend_on_referenced_packages, unused_import
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../core/Models/hotels.dart';

class BookNowPage extends StatefulWidget {
  const BookNowPage({Key? key}) : super(key: key);
  static String id = "BookNowPage";
  @override
  State<BookNowPage> createState() {
    return _BookNowPageState();
  }
}

class _BookNowPageState extends State<BookNowPage> {
  int _addCard = 1;

  void _incrementCard() {
    setState(() {
      if (_addCard <= 10) {
        _addCard++;
        _formKey.add(GlobalKey<FormBuilderState>());
        showSnackBar(context, "New Room Added");
      }
    });
  }

  void _decrementCard() {
    setState(() {
      if (_addCard >= 1) {
        _addCard--;
        showSnackBar(context, "Room Removed");
      }
    });
  }

  bool _genderHasError = false;
  bool autoValidate = true;
  bool readOnly = false;
  bool showSegmentedControl = true;
  final List<GlobalKey<FormBuilderState>> _formKey = [
    GlobalKey<FormBuilderState>()
  ];

  List<int> childOptions = [1, 2, 3, 4, 5];
  List<int> adultsOptions = [1, 2, 3, 4, 5];

  void _onChanged(dynamic val) => debugPrint(val.toString());

  @override
  Widget build(BuildContext context) {
    HotelsRoom? hotelsRoom;
    bool data = true;
    // print("error: ${ModalRoute.of(context)!.settings.arguments.toString()}");
    if (ModalRoute.of(context)!.settings.arguments.toString() == "null") {
      data = true;
    } else {
      data = false;
      hotelsRoom = ModalRoute.of(context)!.settings.arguments as HotelsRoom;
    }

    return CustomWillPopScope(
      title: Text(
        "Leave Booking Page",
        style: title2,
      ),
      onPressed: () => Navigator.of(context).pop(true),
      onPressedNo: () => Navigator.of(context).pop(false),
      child: Scaffold(
        backgroundColor: primaryColor,
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text(
            'Room Booking',
            style: appBarText,
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: _incrementCard,
              color: tertiaryColor,
            ),
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: _decrementCard,
              color: tertiaryColor,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: _addCard,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            blurRadius: 40,
                            color: const Color.fromARGB(82, 237, 85, 138)
                                .withOpacity(0.2),
                            spreadRadius: 0,
                            offset: const Offset(10, 10),
                          )
                        ]),
                        child: Card(
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: [
                                FormBuilder(
                                  key: _formKey[index],
                                  onChanged: () {
                                    _formKey[index].currentState!.save();
                                    debugPrint(_formKey[index]
                                        .currentState!
                                        .value
                                        .toString());
                                  },
                                  autovalidateMode: AutovalidateMode.disabled,
                                  skipDisabled: true,
                                  child: Column(
                                    children: [
                                      const SizedBox(height: 15),
                                      FormBuilderDateRangePicker(
                                        cursorColor: Colors.amber,
                                        currentDate: DateTime.now(),
                                        validator:
                                            FormBuilderValidators.compose([
                                          FormBuilderValidators.required()
                                        ]),
                                        name: 'Date Range',
                                        firstDate: DateTime(2022),
                                        lastDate: DateTime(2030),
                                        onChanged: _onChanged,
                                        decoration: InputDecoration(
                                          labelText: 'Cheak in - Cheak out',
                                          suffixIcon: IconButton(
                                            icon: const Icon(Icons.close),
                                            onPressed: () {
                                              _formKey[index]
                                                  .currentState!
                                                  .fields[
                                                      'Cheak in - Cheak out']
                                                  ?.didChange(null);
                                            },
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      FormBuilderRadioGroup<String>(
                                        decoration: const InputDecoration(
                                          labelText: 'Room Type',
                                        ),
                                        name: "Room Type",
                                        initialValue:
                                            data ? null : hotelsRoom!.roomType,
                                        onChanged: _onChanged,
                                        validator:
                                            FormBuilderValidators.compose([
                                          FormBuilderValidators.required()
                                        ]),
                                        options: [
                                          'Delux Room',
                                          'Presidential',
                                          'Suite',
                                          'Apartment',
                                          'Penthouse',
                                          'Superior Room'
                                        ]
                                            .map((lang) =>
                                                FormBuilderFieldOption(
                                                  value: lang,
                                                  child: Text(lang),
                                                ))
                                            .toList(growable: false),
                                        controlAffinity:
                                            ControlAffinity.trailing,
                                      ),
                                      FormBuilderDropdown<int>(
                                        // autovalidate: true,
                                        name: 'Children',
                                        decoration: InputDecoration(
                                          labelText: 'Children',
                                          suffix: _genderHasError
                                              ? const Icon(Icons.error)
                                              : const Icon(Icons.check),
                                          hintText: 'Select Number Children',
                                        ),
                                        validator:
                                            FormBuilderValidators.compose([
                                          FormBuilderValidators.required()
                                        ]),
                                        items: childOptions
                                            .map((children) => DropdownMenuItem(
                                                  alignment:
                                                      AlignmentDirectional
                                                          .center,
                                                  value: children,
                                                  child:
                                                      Text(children.toString()),
                                                ))
                                            .toList(),
                                        onChanged: (val) {
                                          setState(() {
                                            _genderHasError = !(_formKey[index]
                                                    .currentState
                                                    ?.fields['Children']
                                                    ?.validate() ??
                                                false);
                                          });
                                        },
                                        valueTransformer: (val) =>
                                            val?.toString(),
                                      ),
                                      FormBuilderDropdown<int>(
                                        // autovalidate: true,
                                        name: 'Adults',
                                        decoration: InputDecoration(
                                          labelText: 'Adults',
                                          suffix: _genderHasError
                                              ? const Icon(Icons.error)
                                              : const Icon(Icons.check),
                                          hintText: 'Select Number Adults',
                                        ),
                                        validator:
                                            FormBuilderValidators.compose([
                                          FormBuilderValidators.required()
                                        ]),
                                        items: adultsOptions
                                            .map((adults) => DropdownMenuItem(
                                                  alignment:
                                                      AlignmentDirectional
                                                          .center,
                                                  value: adults,
                                                  child:
                                                      Text(adults.toString()),
                                                ))
                                            .toList(),
                                        onChanged: (val) {
                                          setState(() {
                                            _genderHasError = !(_formKey[index]
                                                    .currentState
                                                    ?.fields['adults']
                                                    ?.validate() ??
                                                false);
                                          });
                                        },
                                        valueTransformer: (val) =>
                                            val?.toString(),
                                      ),
                                      FormBuilderCheckbox(
                                        name: 'accept_terms',
                                        initialValue: false,
                                        onChanged: _onChanged,
                                        title: RichText(
                                          text: const TextSpan(
                                            children: [
                                              TextSpan(
                                                text:
                                                    'I have read and agree to the ',
                                                style: TextStyle(
                                                    color: Colors.black),
                                              ),
                                              TextSpan(
                                                text: 'Terms and Conditions',
                                                style: TextStyle(
                                                    color: Colors.blue),
                                              ),
                                            ],
                                          ),
                                        ),
                                        validator: FormBuilderValidators.equal(
                                          true,
                                          errorText:
                                              'You must accept terms and conditions to continue',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ElevatedButton(
                                        onPressed: () {
                                          if (_formKey[index]
                                                  .currentState
                                                  ?.saveAndValidate() ??
                                              false) {
                                            debugPrint(_formKey[index]
                                                .currentState
                                                ?.value
                                                .toString());
                                            showSnackBar(
                                                context, "successfully Booked");
                                          } else {
                                            debugPrint(_formKey[index]
                                                .currentState
                                                ?.value
                                                .toString());
                                            debugPrint('validation failed');
                                            showSnackBar(context,
                                                "Fields Sholud not be Empty!");
                                          }
                                        },
                                        child: const Text(
                                          'Submit',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Expanded(
                                      child: OutlinedButton(
                                        onPressed: () {
                                          _formKey[index].currentState?.reset();
                                          showSnackBar(context, "Form Reseted");
                                        },
                                        // color: Theme.of(context).colorScheme.secondary,
                                        child: Text(
                                          'Reset',
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
