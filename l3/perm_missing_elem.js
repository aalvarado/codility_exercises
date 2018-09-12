function solution(A) {
  if (A.length < 1)
    return 1

  return (((A.length + 1) * (A.length + 2)) / 2) - A.reduce(function(a, e) { return a + e })
}
