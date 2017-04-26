// Copyright (c) 2017, ntaoo. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

/// Letter inspectors
///
/// https://docs.python.org/3.6/library/string.html
library string_helper;

export 'package:quiver/strings.dart' show isWhitespace, isDigit;

final Iterable<int> asciiLowercaseLetters = 'abcdefghijklmnopqrstuvwxyz'.runes;
final Iterable<int> asciiUppercaseLetters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.runes;
final Iterable<int> asciiLetters =
    [asciiLowercaseLetters, asciiUppercaseLetters].expand((pair) => pair);
final Iterable<int> punctuations =
    r'''!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~'''.runes;

bool isAsciiLowercaseLetter(int rune) => asciiLowercaseLetters.contains(rune);
bool isAsciiUppercaseLetter(int rune) => asciiUppercaseLetters.contains(rune);
bool isAsciiLetter(int rune) => asciiLetters.contains(rune);
bool isPunctuation(int rune) => punctuations.contains(rune);