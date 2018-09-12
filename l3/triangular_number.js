function triangular(num) {
  return (parseInt(num, 10) * (parseInt(num, 10) + 1)) / 2
}

console.log(triangular(process.argv[2]))
