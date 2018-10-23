// HOLDS DECRYPT AND HELPER FUNCTIONS
import Foundation

func decrypt(inKey: String, inCipher: String) {
  // get array of unicode scalars for key, plain
  let keyCodes = Array(inKey.lowercased().unicodeScalars)
  let cipherCodes = Array(inCipher.lowercased().unicodeScalars)
  var out: String = ""
  var curKey, curCipher, decNum: UInt32
  var j: Int = 0 // for indexing key
  
  // run the encryption algorithm
  for i in 0...(cipherCodes.count-1) {
    curKey = keyCodes[j % keyCodes.count].value
    curCipher = cipherCodes[i].value
    if (curCipher >= 0x61 && curCipher <= 0x7a) { // ensures current character is legit
      decNum = ((curKey > curCipher) ? (26 - (curKey - curCipher)) : ((curCipher - curKey) % 26))
      out += String(Unicode.Scalar(decNum + 0x61) ?? Unicode.Scalar(0x2a))
      j += 1
    }
    else { // "handles" (ignores) anomalous characters
      out += String(Unicode.Scalar(curCipher) ?? Unicode.Scalar(0x2a))
    }
  }
  print(out)
}
