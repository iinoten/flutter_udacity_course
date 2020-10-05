// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  final String name; // 引数の型を指定(nullでも通るみたい(だから後でnullじゃないかのチェックが要る))
  final ColorSwatch color;
  final IconData iconLocation;
  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  // TODO: You'll need the name, color, and iconLocation from main.dart
  const Category({
    Key key,
    @required this.name,  //@requiredで必須の引数にする
    @required this.color,
    @required this.iconLocation,
  }): assert(name != null), //引数の中身がnullではないかどうかを見てる
      assert(color != null),
      assert(iconLocation != null),
      super(key: key);

  /// Builds a custom widget that shows [Category] information.
  ///
  /// This information includes the icon, name, and color for the [Category].
  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://docs.flutter.io/flutter/material/Theme-class.html
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    return Container(
      height: _rowHeight,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: InkWell(
          borderRadius: _borderRadius,  // InkWellに角丸を追加
          onTap: () { print('Iwas tapped!');},
          splashColor: Colors.green[400],
          highlightColor: Colors.green[400],
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Icon(
                    iconLocation, 
                    size: 60.0, 
                  ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Cake',
                  style: TextStyle(
                    fontSize: 24
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}