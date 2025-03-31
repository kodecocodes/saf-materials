/// Copyright (c) 2025 Kodeco LLC
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

// CHARACTERS

let name = "Ma\u{0302}tt Gallo\u{0308}way"
let sixthChar = name[name.index(name.startIndex, offsetBy: 5)]
for char in name {
  for scalar in char.unicodeScalars {
    print(scalar.value, terminator: " ")
  }
  print("")
}


// SUBSTRINGS

func nameLength(name: String) -> (Int, Int) {
  let spaceIndex = name.firstIndex(of: " ")
  guard let spaceIndex else {
    return (name.count, 0)
  }

  let firstNameLength = name.distance(from: name.startIndex, to: spaceIndex)
  let lastNameLength = name.distance(from: spaceIndex, to: name.endIndex) - 1
  return (firstNameLength, lastNameLength)
}
nameLength(name: "Matt Galloway")


// CHARACTER PROPERTIES

let str = "There are 4 sides to a square.\nAnd 6 sides to a cube."
for char in str {
  print(char, terminator: " ")
  if char.isLetter {
    print("isLetter")
  } else if char.isNumber {
    print("isNumber")
  } else if char.isNewline {
    print("isNewLine")
  } else if char.isWhitespace {
    print("isWhitespace")
  } else if char.isASCII {
    print("isASCII")
  }
}
