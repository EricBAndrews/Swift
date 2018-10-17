// HOLDS ENCRYPT AND HELPER FUNCTIONS
import Foundation

func encrypt(inKey: String, inPlain: String) {
  // get array of unicode scalars for key, plain
  let keyCodes = Array(inKey.lowercased().unicodeScalars)
  let plainCodes = Array(inPlain.lowercased().unicodeScalars)
  var out: String = ""
  var curKey, curPlain, keyNum, plainNum, encNum: UInt32
  var j: Int = 0 // for indexing key
  for i in 0...(plainCodes.count-1) {
    curKey = keyCodes[j % keyCodes.count].value
    curPlain = plainCodes[i].value
    if (curPlain >= 0x61 && curPlain <= 0x7a) {
      keyNum = curKey - 0x61
      plainNum = curPlain - 0x61
      encNum = (plainNum + keyNum) % 26
      out += String(Unicode.Scalar(encNum + 0x61) ?? Unicode.Scalar(0x2a))
      j += 1
    }
    else {
      out += String(Unicode.Scalar(curPlain) ?? Unicode.Scalar(0x2a))
    }
  }
  print(out)
}
