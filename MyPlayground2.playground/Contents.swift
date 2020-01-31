//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var firstNumber: Int
var secondNumber: Int
var answer: Int
firstNumber = 5
secondNumber = 14
answer = firstNumber + secondNumber
print("The answer is:\(answer)")

var thirdNumber: Int
var fourthNumber: Int
var answer2: Int
thirdNumber = Int(arc4random_uniform(10))
fourthNumber = Int(arc4random_uniform(10))
answer2 = thirdNumber + fourthNumber
print("the answer is:\(answer2)")

var friendlyWelcome = "Hello1"
friendlyWelcome = "Bonjour!"

let languageName = "Swift"
//languageName = "Swift++"

print(friendlyWelcome)

print("The current value of friendlyWelcome is \(friendlyWelcome)")

let cat = "😺"
print(cat)

let minValue = UInt8.min
let maxValue = UInt8.max

var arrayOfIntegers:[Int] = [1,2,3,4,5,6,7,8,9,10]
for (numbers) in arrayOfIntegers{
    print(numbers)
}


let interestingNumbers = [
    "Prime":[2,3,5,7,11,13],
    "Fiboncacci":[1,1,2,3,5,8],
    "Square":[1,4,9,16,25],
]

for(kind, numbers) in interestingNumbers{
    print(kind, numbers)
}

struct Resolution{
    var width = 1024
    var height = 768
    
}


class VideoMode{
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let aResolution = Resolution()
let aVideoMode = VideoMode()
print("The width of aResolution is \(aResolution.width)")

aVideoMode.resolution.width = 1280

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min

let http404Error = (404, "Not Found")
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
print("The status message is \(statusMessage)")

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)

var serverResponseCode: Int? = 404
serverResponseCode = nil
if convertedNumber != nil {
    print("convertedNumber contains some integer value")
    
}
if let actualNumber = Int(possibleNumber){
    print("The string \"\(possibleNumber)\" has an integer value of \(actualNumber)")
}else{
    print("The string \"\(possibleNumber)\" could not be converted to an integer")
    
}

func canThrowAnError() throws {
    
}

do {
    try canThrowAnError()
}catch{
    
}

let age = -3
assert(age >= 0, "A person's age can't be less than zero")

func greet (person: String) -> String {
    let greeting = "Hello, " + person + "!"
    return greeting
}
print(greet(person:"Anna"))
print(greet(person: "Brian"))

func greetAgain(person: String) -> String{
    return "hello" + person + "again"
}

func greet(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain(person: person)
    }else{
        return greet(person: person)
    }
}

print(greet(person: "Tim", alreadyGreeted: true))

