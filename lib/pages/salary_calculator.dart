import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalaryCalculator extends StatefulWidget {
  const SalaryCalculator({super.key});

  @override
  State<SalaryCalculator> createState() => _SalaryCalculatorState();
}

class _SalaryCalculatorState extends State<SalaryCalculator> {
  final grossController = TextEditingController();
  final taxController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  double? netSalary;
  double? deduction;
  double? grossSalary;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(
            left: 82,
          ),
          child: Text(
            "Salary Calculator ",
            style: TextStyle(
                color: Colors.white,
                fontSize: 22.sp,
                fontWeight: FontWeight.w700),
          ),
        ),
        backgroundColor: const Color(0xff146C94),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.only(left: 20.w, right: 20.w),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisSize: MainAxisSize.max,

              children: [
                SizedBox(
                  height: 30.h,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 250),
                  child: Text("Gross Salary"),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 7, 74, 129), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 0),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 14),
                    filled: true,
                    fillColor: const Color(0xfff5f6fa),
                    hintText: "Enter gross salary ",
                    hintStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  controller: grossController,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null) {
                      return "salary is null";
                    } else if (value.trim().isEmpty) {
                      return "input required";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 20.h,
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 250),
                  child: Text("Income tax"),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(255, 7, 74, 129), width: 1),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                      borderSide:
                          const BorderSide(color: Colors.blue, width: 0),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 14),
                    filled: true,
                    fillColor: const Color(0xfff5f6fa),
                    hintText: "0",
                    hintStyle: const TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  controller: taxController,
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null) {
                      return "salary is null";
                    } else if (value.trim().isEmpty) {
                      return "input required";
                    }
                    return null;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 41,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xff146C94),
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {
                                bool formIsValid =
                                    _formKey.currentState!.validate();
                                if (!formIsValid) {
                                  return;
                                }
                                deduction = double.parse(taxController.text) /
                                    100 *
                                    double.parse(grossController.text);
                                grossSalary =
                                    double.parse(grossController.text);
                                netSalary = (grossSalary! - deduction!);

                                setState(() {});
                              },
                              child: const Row(
                                children: [
                                  Icon(Icons.check_circle, color: Colors.white),
                                  Text(
                                    "Calculate",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            // const SizedBox(width: 10,),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 41,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xff146C94),
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            TextButton(
                              onPressed: () {
                                netSalary = 0;
                                setState(() {});
                              },
                              child: const Row(
                                children: [
                                  Icon(Icons.clear, color: Colors.white),
                                  Text(
                                    "Clear",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                            // const SizedBox(width: 10,),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                // Text(taxController.text),
                // Text("$grossController"),
                // Text("data"),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 38,
                        width: 157,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          color: const Color(0xff146C94),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            "Gross Salary",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    // if (netSalary != null)
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 38,
                        width: 163,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          color: const Color(0xff146C94),
                        ),
                        child: Center(
                          child: Text(
                            grossSalary == null ? "" : "$grossSalary",
                            // "$netSalary",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.sp),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 38,
                        width: 157,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          color: const Color(0xff146C94),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            "Tax",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    // if (netSalary != null)
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 38,
                        width: 163,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          color: const Color(0xff146C94),
                        ),
                        child: Center(
                          child: Text(
                            deduction == null ? "" : "-$deduction",
                            // "$netSalary",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.sp),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // if (grossSalary != null)
                //   Text("gross salary:${grossController.text}"),

                // if (deduction != null) Text("Tax:- $deduction"),

                // if (netSalary != null) Text('Net Salary: $netSalary'),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 38,
                        width: 157,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          color: const Color(0xff146C94),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            "Net Salary",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                    // if (netSalary != null)
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 38,
                        width: 163,
                        decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.black),
                          color: const Color(0xff146C94),
                        ),
                        child: Center(
                          child: Text(
                            netSalary == null ? "" : "$netSalary",
                            // "$netSalary",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14.sp),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                // const SizedBox(
                //   height: 303,
                // ),

                // Container(
                //   color: const Color(0xff146C94),
                //   height: 92,
                //   width: 369,
                //   child: Row(
                //     children: [
                //       Column(
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           TextButton(
                //             onPressed: () {},
                //             child: const Column(
                //               children: [
                //                 Icon(Icons.check_circle, color: Colors.white),
                //                 Text(
                //                   "Calculate",
                //                   style: TextStyle(
                //                       color: Colors.white,
                //                       fontSize: 16,
                //                       fontWeight: FontWeight.w600),
                //                 ),
                //               ],
                //             ),
                //           ),
                //           // const SizedBox(width: 10,),
                //         ],
                //       ),
                //       Column(
                //         mainAxisAlignment: MainAxisAlignment.start,
                //         children: [
                //           TextButton(
                //             onPressed: () {},
                //             child: const Column(
                //               children: [
                //                 Icon(Icons.clear, color: Colors.white),
                //                 Text(
                //                   "Clear",
                //                   style: TextStyle(
                //                       color: Colors.white,
                //                       fontSize: 16,
                //                       fontWeight: FontWeight.w600),
                //                 ),
                //               ],
                //             ),
                //           ),
                //         ],
                //       ),
                //     ],
                //   ),
                // ),
                // BottomNavigationBar(items: )
                // ignore: prefer_const_literals_to_create_immutables
                // NavigationBar(
                //   backgroundColor: const Color(0xff146C94),
                //   height: 92,
                //   destinations: const [
                //     NavigationDestination(
                //       icon: Icon(
                //         Icons.exit_to_app_outlined,
                //         // color: Colors.white,
                //       ),
                //       label: "Exit",
                //     ),
                //     NavigationDestination(
                //         icon: Icon(
                //           Icons.share_outlined,
                //           color: Colors.white,
                //         ),
                //         label: "Share"),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
