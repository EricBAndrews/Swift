// SUBFACTORIAL - MAIN FILE

while true {
  print("Enter a value to compute the subfactorial of: ", terminator: "")
  if let input = readLine() {
    if let intInput = UInt64(input) {
      print(subfactorial(n: intInput))
    }
    else {
      print("Invalid input; failing")
      break
    }
  }
}
