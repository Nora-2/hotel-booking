import 'package:flutter/material.dart';

Container custombuttonNext() {
    return Container(
                          width: 200,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color(0xffFFC443),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey,
                                    spreadRadius: 0,
                                    blurRadius: 10),
                              ]),
                          child: TextButton(
                            onPressed: () {
                              
                            },
                            child: Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        );
  }


