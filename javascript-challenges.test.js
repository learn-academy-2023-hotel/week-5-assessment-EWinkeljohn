// ASSESSMENT 5: JavaScript Coding Practical Questions with Jest

// const { describe } = require("yargs")

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest

// --------------------1) Create a function that takes in a string and returns a string with a coded message. The coded message converts "a" to 4, "e" to 3, "i" to 1, and "o" to 0.

// a) Create a test with expect statements using the variables provided.

// describe("codeWord", () => {
//    it("returns a string with a coded message", () => {
//     expect(codeWord("Lackadaisical")).toEqual("L4ck4d41s1c4l")
//     expect(codeWord("Gobbledygook")).toEqual("G0bbl3dyg00k")
//     expect(codeWord("Eccentric")).toEqual("3cc3ntr1c")
//    }) 
// })
// Failing Output --> ReferenceError: codeWord is not defined
// Passing Output --> ✓ returns a string with a coded message (5 ms)

// turn into Array
// downcase
// map over to find vowels and return numbers
// bring it all back together
// capitalize 0th index

const secretCodeWord1 = "Lackadaisical"
// Expected output: "L4ck4d41s1c4l"
const secretCodeWord2 = "Gobbledygook"
// Expected output: "G0bbl3dyg00k"
const secretCodeWord3 = "Eccentric"
// Expected output: "3cc3ntr1c"

// b) Create the function that makes the test pass.

const codeWord =(string) => {
   let arr = string.toLowerCase().split("")
//    Declare new variable to lowercase all letters and split into array where all letters are seperated by commas
   let newArr = []
//    Declare empty array to put values into
    for (let i=0; i<arr.length; i++) {
        // for loop to iterate over each letter of arr
        if (arr[i] === "a"){
            newArr.push("4")
        } else if (arr[i] === "e"){
            newArr.push("3")
        } else if (arr[i] === "i"){
            newArr.push("1")
        } else if (arr[i] === "o"){
            newArr.push("0")
        } else {
            newArr.push(arr[i])
        }
        // conditional statements to change vowels to numbers and push new values into newArr
    }

    let newWord = newArr.slice(1).join("")
    // new variable to separate first element from rest of newArr and bring that together as a string
    let firstLetter = newArr[0].toUpperCase()
    // new variable to capitalize first element on newArr
    return firstLetter + newWord
    // return the result of concatenating the capitalized 0th index with remainder of string
}
// console.log(codeWord(secretCodeWord3))
// 3cc3ntr1c
// console.log(codeWord(secretCodeWord2))
// G0bbl3dyg00k
// console.log(codeWord(secretCodeWord1))
// L4ck4d41s1c4l


// --------------------2) Create a function that takes in an array of 5 numbers and determines whether or not the array is a "full house". A full house is exactly one pair and one three of a kind.

// a) Create a test with expect statements using the variable provided.

// describe("fullHouse", () => {
//     it("determines whether or not the array is a full house", () => {
//      expect(fullHouse([5, 5, 5, 3, 3])).toEqual(true)
//      expect(fullHouse([5, 5, 3, 3, 4])).toEqual(false)
//      expect(fullHouse([5, 5, 5, 5, 4])).toEqual(false)
//      expect(fullHouse([7, 2, 7, 2, 7])).toEqual(true)
//     }) 
//  })
// Failing output: ReferenceError: fullHouse is not defined
// Passing output: ✓ determines whether or not the array is a full house

const hand1 = [5, 5, 5, 3, 3]
// Expected output: true
const hand2 = [5, 5, 3, 3, 4]
// Expected output: false
const hand3 = [5, 5, 5, 5, 4]
// Expected output: false
const hand4 = [7, 2, 7, 2, 7]
// Expected output: true

// b) Create the function that makes the test pass.

const fullHouse = (array) => {
    // create function to take in array
    console.log(array.sort((a,b)=>{return a-b}))
    // use .sort with a compare function to order numbers in array from least to greatest to group same numbers next to each other
    // compare function subtracts value(b) from current value(a); if negative, order value(a) before value(b)
    if ((array[0] === array[1] && array[1] === array[2] && array[3] === array[4]) ||
    // conditional comparing each card to each other using logical AND for lower value triplet and higher value pair followed by logical OR
        (array[0] === array[1] && array[2] === array[3] && array[3] === array[4])){
     // to compare each card to each other for lower value pair and higher value triplet 
            return true
        // return true for both above situations
    } else {
        return false
        // return false for any other combo
    }
}
console.log(fullHouse(hand1))
// Output: true
console.log(fullHouse(hand2))
// Output: false
console.log(fullHouse(hand3))
// Output: false
console.log(fullHouse(hand4))
// Output: true

