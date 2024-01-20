import UIKit

//1.What is Swift and provide a brief overview of it?

print("Apple developed Swift, a powerful and user-friendly programming language, to help developers create programs for iOS, Mac, Apple TV, and Apple Watch. It is intended to offer developers greater flexibility than before. Since Swift is open source and simple to use, anyone with an idea may produce amazing things.\n")

/*2.Declare a constant named sID and assign your SID to it. Declare a variable named fullname
and assign your full name to it. Print them to the console using string interpolation. For example?*/
let sID = "S567006"
var fullname = "Tarun Yada"
print("SID: \(sID),Fullname: \(fullname)")

/*3.Is Bool a data type in Swift, if yes please justify your answer?*/
print("Yes Bool is a data type in swift more over it represents Boolean value that is either true or false.\n")

/*4.Which among the two (i.e. Double or Float) has more precision digits? Please provide a valid justification?*/
print("In Swift both double and float is used for decimal numbers. by using float data type Swift automatically allocate 32-bit as memory moreover it precision atleast 6 decimal digits. By using double data type in Swfit it automatically allocate 64-bit as memory moreover it precision atleast 15 decimal digits \n")

//5.Convert an integer 73 into binary, octal and hexadecimal and print them one by one?
let decimalinteger = 73
print("Binary: \(String(decimalinteger, radix: 2)), Octal: \(String(decimalinteger, radix: 8)), Hexadecimal: \(String(decimalinteger, radix: 16))")


//6.What is the difference between Int32 and UInt32?
print("In swift Int32 and UInt32 allocate same memory but the major difference between is int32(integer) system will takes positive,zero, or negative moreover in UInt32(unsigned) system will take only positive or zero.")

//7.Explain the difference between using + operator for string concatenation and string interpolation?
let firstname = "Tarun"
let lastname = "Yada"
print("String Concatenation: " + firstname + " " + lastname)
print("String Interpolation: \(firstname) \(lastname)")
/*8. Consider a constant named num, which is of type Int has taken a value of 300. Assign it to another constant named anotherNum, which is of type Int8.Print the value of anotherNum.
    i. Hint: Perform the downcast operation, if needed use
    init(trucatingIfNeeded:BinaryInteger)*/
let num: Int = 300
let anotherNum: Int8 = Int8(truncatingIfNeeded: num)
print("anotherNum: \(anotherNum)")
//9.Compare the methods print(:separator:terminator:) and debugPrint(:separator:terminator:) in Swift by printing the constant sID you created above
print("Using print():", terminator: " ")
print(sID)
debugPrint("Using debugPrint():", terminator: " ")
debugPrint(sID)
/*10.Consider the string age and assign it a value of 21. Print the value of age after 3 years from now.
i. Hint: use type conversion to achieve it*/
var Stringage = "21"
if let Intage = Int(Stringage) {
    let futureAge = Intage + 3
    print("Age after 3 years: \(futureAge)")
} else {
    print("Invalid age value.")
}
/*11.You are given a function that takes two parameters number1 and number2 and returns a String. Assume both the numbers are positive integers. The goal of this function is to reverse number1 and number2, find their sum, reverse the sum, and return it as a String. Implement
the following function.
private func addTwoNumbers(number1: Int, number2: Int) -> String {

}*/
private func addTwoNumbers(number1: Int, number2: Int) -> String {
    func reverseNumber(_ num: Int) -> Int {
        return Int(String(String(num).reversed())) ?? 0
}
    let revnum1 = reverseNumber(number1)
    let revnum2 = reverseNumber(number2)
    let revSum = reverseNumber(revnum1 + revnum2)
    return String(revSum)
}

let result1 = addTwoNumbers(number1: 983, number2: 3256)
print("Example 1: \(result1)")
let result2 = addTwoNumbers(number1: 1, number2: 9999)
print("Example 2: \(result2)")
