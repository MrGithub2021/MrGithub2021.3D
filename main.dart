// Copyright (c) 2012, the Dart project authors.
// Please see the AUTHORS file // for details.
// All rights reserved. Use of this source code
// is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:html';

InputElement toDoInput;
OListElement toDoList;
ButtonElement deleteAll;

void main() {
  toDoInput = querySelector('#like-input');
  toDoList = querySelector('#like-list');
  toDoInput.onChange.listen(addToDoItem);
}

void addToDoItem(Event e) {
  var newToDo = new LIElement();
  newToDo.text = toDoInput.value;
  toDoInput.value = '';
  toDoList.children.add(newToDo);
}
