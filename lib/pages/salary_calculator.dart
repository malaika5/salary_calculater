import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalaryCalculator extends StatefulWidget {
  const SalaryCalculator({super.key});

  @override
  State<SalaryCalculator> createState() => _SalaryCalculatorState();
}

class _SalaryCalculatorState extends State<SalaryCalculator> {
  Widget getTextField({
    required String hint,
  }) {
    return TextField(
      // obscureText: true,

      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(1),
              borderSide: const BorderSide(
                  color: Color.fromARGB(255, 7, 74, 129), width: 1)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Colors.blue, width: 0)),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          filled: true,
          fillColor: const Color(0xfff5f6fa),
          hintText: hint,
          hintStyle:
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
    );
  }

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
      body: Column(
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
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: getTextField(hint: "Enter Gross Salary"),
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
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: getTextField(hint: "0"),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  height: 41,
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(0xff146C94),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextButton(
                        onPressed: () {},
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      height: 41,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: const Color(0xff146C94),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextButton(
                            onPressed: () {},
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
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          // Text("data"),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
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
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  height: 38,
                  width: 163,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.black),
                    color: const Color(0xff146C94),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 303,
          ),
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
          NavigationBar(
            backgroundColor: const Color(0xff146C94),
            height: 92,
            destinations: const [
              NavigationDestination(
                icon: Icon(
                  Icons.exit_to_app_outlined,
                  // color: Colors.white,
                ),
                label: "Exit",
              ),
              NavigationDestination(
                  icon: Icon(
                    Icons.share_outlined,
                    color: Colors.white,
                  ),
                  label: "Share"),
            ],
          ),
        ],
      ),
    );
  }
}
