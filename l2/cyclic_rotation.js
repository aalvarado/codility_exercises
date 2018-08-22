// 100% Test Score
// https://app.codility.com/demo/results/trainingCDEYHT-QCH/
function solution(A, K) {
  var newList = [];

  if (K > A.length - 1) {
    K = (K % A.length);
  }

  if (K == 0) {
    return A;
  }

  for (var i = A.length - K; i < A.length; i++){
    newList.push(A[i])
  }

  for (var i = 0; i < A.length - K; i++) {
    newList.push(A[i])
  }

  return newList;
}
