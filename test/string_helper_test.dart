// Copyright (c) 2017, ntaoo. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:string_helper/string_helper.dart';
import 'package:test/test.dart';

void main() {
  group(isAsciiLowercaseLetter, () {
    Iterable<int> asciiLowercaseLetters;

    setUp(() {
      asciiLowercaseLetters = r'''abcdefghijklmnopqrstuvwxyz'''.runes;
    });

    test('returns true for ascii lowercase letters', () {
      asciiLowercaseLetters.forEach((p) {
        expect(isAsciiLowercaseLetter(p), isTrue);
      });
    });
    test('returns false for non-ascii lowercase letters', () {
      expect(isAsciiLowercaseLetter('A'.codeUnitAt(0)), isFalse);
      expect(isAsciiLowercaseLetter('1'.codeUnitAt(0)), isFalse);
      expect(isAsciiLowercaseLetter(' '.codeUnitAt(0)), isFalse);
    });
  });

  group(isAsciiUppercaseLetter, () {
    Iterable<int> AsciiUppercaseLetters;

    setUp(() {
      AsciiUppercaseLetters = r'''ABCDEFGHIJKLMNOPQRSTUVWXYZ'''.runes;
    });

    test('returns true for ascii uppercase letters', () {
      AsciiUppercaseLetters.forEach((p) {
        expect(isAsciiUppercaseLetter(p), isTrue);
      });
    });
    test('returns false for non-ascii uppercase letters', () {
      expect(isAsciiUppercaseLetter('a'.codeUnitAt(0)), isFalse);
      expect(isAsciiUppercaseLetter('1'.codeUnitAt(0)), isFalse);
      expect(isAsciiUppercaseLetter(' '.codeUnitAt(0)), isFalse);
    });
  });

  group(isAsciiLetter, () {
    Iterable<int> asciiLetters;

    setUp(() {
      asciiLetters =
          r'''abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'''.runes;
    });

    test('returns true for ascii letters', () {
      asciiLetters.forEach((p) {
        expect(isAsciiLetter(p), isTrue);
      });
    });
    test('returns false for non-ascii letters', () {
      expect(isAsciiLetter('1'.codeUnitAt(0)), isFalse);
      expect(isAsciiLetter(' '.codeUnitAt(0)), isFalse);
    });
  });

  group(isPunctuation, () {
    Iterable<int> punctuations;

    setUp(() {
      punctuations = r'''!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~'''.runes;
    });

    test('returns true for punctuations', () {
      punctuations.forEach((p) {
        expect(isPunctuation(p), isTrue);
      });
    });
    test('returns false for non-punctuations', () {
      expect(isPunctuation('a'.codeUnitAt(0)), isFalse);
      expect(isPunctuation('1'.codeUnitAt(0)), isFalse);
      expect(isPunctuation(' '.codeUnitAt(0)), isFalse);
    });
  });
}
