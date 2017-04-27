function madLib(verb, adj, noun) {
  return `We shall ${verb.toUpperCase()} the ${adj.toUpperCase()} ${noun.toUpperCase()}`;
}

function isSubstring(searchString, subString) {
  return searchString.includes(subString);
}

// Tests for isSubString
// console.log(isSubstring("time to program", "time"));
// console.log(isSubstring("Jump for joy", "joys"));

function fizzbuzz(array) {
  let result = [];
  array.forEach(el => {
    if ((el % 3 === 0) ^ (el % 5 === 0)){
      result.push(el);
    }
  });

  return result;
}

// Tests for fizzbuzz
// console.log(fizzbuzz([1, 3, 5, 15, 30, 9])); // [3, 5, 9]

function isPrime(number){
  if (number < 2) { return false; }

  for( let i = 2; i < number; i++){
    if (number % i === 0) { return false; }
  }

  return true;
}

// Tests for isPrime
// console.log(isPrime(2)); //true
// console.log(isPrime(10)); //false
// console.log(isPrime(15485863)); //true
// console.log(isPrime(3548563)); //false

function sumOfnPrimes(n){
  let sum = 0;
  let count = 0;
  let i = 2;

  while(count < n){
    if (isPrime(i)){
      sum += i;
      count ++;
    }
    i += 1;
  }

  return sum;
}

// // Tests for sumOfnPrimes
// console.log(sumOfnPrimes(0)); //0
// console.log(sumOfnPrimes(1)); //2
// console.log(sumOfnPrimes(4)); //17
