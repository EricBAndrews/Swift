// ENCRYPTION - MAIN FILE

print("Enter keyword: ", terminator: "")
let inKey = readLine() ?? ""
print("Enter text to encrypt: ", terminator: "")
let inPlain = readLine() ?? ""
// print("Enter name of output file: ", terminator: "")
// let outFile = readLine() ?? ""
// \noutFile: \(outFile)")

encrypt(inKey: inKey, inPlain: inPlain)
