import 'package:flutter/material.dart';

Container custombuttonsearch() {
    return Container(
                          width: 200,
                          height: 40,
                          decoration: BoxDecoration(
                              color: Color(0xffFFC443),
                              borderRadius: BorderRadius.circular(30),
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
                              'Search',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                          ),
                        );
  }


