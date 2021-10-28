// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() => runApp(Mode());

class Mode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: GestureDetector(
          onTap: (){},
          child: Padding(
            padding: const EdgeInsets.only(left: 10,top: 10),
            child: SizedBox(
              width: 370,
              height: 150,
              child: OutlineButton(
                borderSide:BorderSide(
                  width: 2
                ),
                color: Colors.blueGrey,
                onPressed: (){},
              ),
            ),
          ),
        ),
      ),
    );
  }
}