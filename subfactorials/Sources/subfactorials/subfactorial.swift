// computes the subfactorial of n using the algorithm !n = (n - 1)(!(n - 1) + !(n - 2))
func subfactorial(n: UInt64) -> UInt64 {
  if (n == 0) {
    return 1
  }
  else if (n == 1) {
    return 0
  }
  else {
    return (n - 1) * (subfactorial(n: (n - 1)) + subfactorial(n: (n - 2)))
  }
}
