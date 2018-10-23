// DECRYPTION - MAIN FILE

print("Enter keyword: ", terminator: "")
let inKey = readLine() ?? ""
print("Enter text to decrypt: ", terminator: "")
let inCipher = readLine() ?? ""
// print("Enter name of output file: ", terminator: "")
// let outFile = readLine() ?? ""
// \noutFile: \(outFile)")

decrypt(inKey: inKey, inCipher: inCipher)

