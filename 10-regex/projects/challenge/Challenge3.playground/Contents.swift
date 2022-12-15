/// Copyright (c) 2023 Kodeco LLC
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
///
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
///
/// This project and source code may use libraries or frameworks that are
/// released under various Open-Source licenses. Use of those libraries and
/// frameworks are governed by their own individual licenses.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import RegexBuilder

let capsRegex = Regex {
  Anchor.wordBoundary
  ZeroOrMore {
    CharacterClass.digit.union("a"..."z")
  }
  Capture {
    OneOrMore {
      "A"..."Z"
    }
  }
  ZeroOrMore {
    CharacterClass.digit.union("a"..."z")
  }
  Capture {
    ZeroOrMore {
      "A"..."Z"
    }
  }
  ZeroOrMore {
    OneOrMore {
      CharacterClass.digit.union("a"..."z")
    }
    Capture {
      ZeroOrMore {
        "A"..."Z"
      }
    }
  }
  Anchor.wordBoundary
}

let testingString1 = "abcdef ABCDEF 12345 abc123 ABC 123 123ABC 123abc abcABC"

print("Test 1:")

for match in testingString1.matches(of: capsRegex) {
  print(match.output)
}

print("----------------")
print("Test 2:")

let testingString2 = "abcdeABCDE1234 1234ABCDEabcde abcde1234"

for match in testingString2.matches(of: capsRegex) {
  print(match.output)
}

print("----------------")
print("Test 3:")

let testingString3 = "a1b2ABCDEc3d4"

for match in testingString3.matches(of: capsRegex) {
  print(match.output)
}

print("----------------")
print("Test 4:")

let testingString4 = "a1b2ABCDEc3d4FGHe5f6g7"

for match in testingString4.matches(of: capsRegex) {
  print(match.output)
}

print("----------------")
print("Test 5:")

let testingString5 = "a1b2ABCDEc3d4FGHe5f6g7IJK"

for match in testingString5.matches(of: capsRegex) {
  print(match.output)
}

print("----------------")
print("Test 6:")

let testingString6 = "a1b2ABCDEc3d4FGHe5f6g7IJKh8i9LMNj0OPQ"

for match in testingString6.matches(of: capsRegex) {
  print(match.output)
}
