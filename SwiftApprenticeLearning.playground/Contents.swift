//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Constants
let NUMBER: Int = 10
let PI: Double
PI = 3.14159

//Variable
var variableNumber: Int = 42
variableNumber = 0
variableNumber = 1_000_000//Underline to make larger numbers more human-readable, the quanlity and placement of the underline is up to you

//Type conversion
var integer: Int = 100
var decimal: Double = 12.5
integer = Int(decimal)

var myAge: Int = 24
var averageAge: Double = Double(myAge)
averageAge = Double((myAge + 30) / 2)

//Tuples
var coordinates1: (Double, Double) = (2.1, 3.5)
let coordinates2: (Double, Int) = (2.1, 3)
var coordinates2_1: Int = coordinates2.1
coordinates1 = (2.2, 3.6)
var coordinatesNamed: (x: Int, y:Int) = (2, 3)
var x = coordinatesNamed.x
var y = coordinatesNamed.y
(x, y) = coordinatesNamed
(x, y, _) = (3, 4, 5)//The _ means ignore the third part

var dateAndTemperature: (month:Int, day:Int, year:Int, averageTemperature:Double) = (2, 29, 2016, 18)
let (date_month, _, _, date_temperature) = dateAndTemperature
dateAndTemperature.averageTemperature = 17

//Type inference
let typeInferredInt = 42

//Numberic operation: +, -, *, /, %, <<, >>, ++, --, +=, -=, *=, /=

//Bool, ==, >, <, <=, >=, &&, ||
let yes: Bool = true
var no = false

//Character and String
var characterA: Character = "A"
var stringDog: String = "Dog"

//String contatenation
var messgae = "Hello" + " World"
messgae += String(characterA)

//String interpolation: \(Expression)
var name = "zhqiux"
messgae = "Hello, my name is \(name)!"
var oneThird = 1.0 / 3.0
var oneThirdString = "One third is \(oneThird) as a demical."
"One Second is \(1.0 / 2.0) as a demical."

//String equality and other methods
"Cat" == "Dog"
"Cat" == "Cat"
"Cat" < "Dog"
name.characters.count
name.uppercaseString
"HAHA".lowercaseString

//Encapsulating variable, Control flow: if(else, else if), switch, for-loop, while-loop, repeat-while-loop
if (2 > 1)
{
    let encapsulatingVariable = 1
    print("2 is greater than \(encapsulatingVariable)")
}

let numberSwitch = 10
switch(numberSwitch)
{
case 0, 1, 2:
    print("Zero One Two")
    break
default:
    print("Non-Zero")
    break
}

var sum = 0
for var i = 0;i <= 10; i++
{
    sum += i
}
print(sum)

sum = 0
while sum < 55
{
    sum += sum + 1
}
print(sum)

sum = 0
repeat
{
    sum += sum + 1
}while sum < 1
print(sum)

//The ternary conditional operator
let num1 = 5
let num2 = 10
let min_num = num1 < num2 ? num1 : num2
let max_num = num1 > num2 ? num1 : num2

//Range: closed range
let closedRange = 0...5//(0, 1, 2, 3, 4, 5)
let halfOpenRange = 0..<5//(0, 1, 2, 3, 4)
switch(numberSwitch)
{
case 0...2:
    print("Zero One Two")
    break
case 3...10:
    print("3 to 10")
    break
default:
    print("Others")
    break
}

sum = 0
for i in 1...10
{
    sum += i
}
print(sum)

for _ in 0..<2
{
    print("Do not require the loop variable")
}



//Function
func printName()
{
    print("My name is zhqiux")
}
printName()

func printMultipleOf(multiplier: Int, andValue: Int)
{
    print("\(multiplier) * \(andValue) = \(multiplier * andValue)")
}
printMultipleOf(3, andValue: 4)

//function parameter external name
func printMultipleOf(multiplier: Int, and andValue: Int)
{
    print("\(multiplier) * \(andValue) = \(multiplier * andValue)")
}
printMultipleOf(3, and: 4)

func printMultipleOf(multiplier: Int, _ andValue: Int)
{
    print("\(multiplier) * \(andValue) = \(multiplier * andValue)")
}
printMultipleOf(3, 4)

//function return 
func multiply(multiplier: Int, by andValue: Int) -> Int
{
    return multiplier * andValue
}
var result = multiply(3, by: 4)

func multiplyAndDivide(numeber: Int, by byValue: Int) ->(multiply: Int, divide: Int)
{
    return (numeber * byValue, numeber / byValue)
}
let resultTuple = multiplyAndDivide(4, by: 2)
resultTuple.multiply
resultTuple.divide

//Parameters passed to functions are constants by default, you can change this behavior by making the parameter a variable
//Pass by value
var value = 10
func incrementAndPrint(var value: Int)
{
    value++
    print(value)
}
incrementAndPrint(value)
print(value)

//Pass by reference
value = 10
func incrementAndPrintInout(inout value: Int)
{
    value++
    print(value)
}
incrementAndPrintInout(&value)
print(value)

//Standard library
abs(-11)
max(11, 22)
min(11, 22)

//Function as variable
func add(a: Int, _ b: Int) -> Int
{
    return a + b
}
//var funcVar: (Int, Int) -> Int = add
var funcVar = add
funcVar(2, 4)

func printResult(function: (Int, Int) -> Int, _ a: Int, _ b: Int)
{
    let result = function(a, b)
    print(result)
}
printResult(funcVar, 2, 4)


//Closure: a closure is a function without a name
var multipleClosure: (Int, Int) -> Int
multipleClosure = {(a: Int, b: Int) -> Int in
    return a * b
}
//1. remove return in closure
//multipleClosure = {(a: Int, b: Int) -> Int in
//    a * b
//}

//2. remove return type in closure name
//multipleClosure = {(a: Int, b: Int) in
//    a * b
//}

//3. remove parameter type in closure parameter list
//multipleClosure = {(a, b) in
//    a * b
//}

//4. remove closure name
//multipleClosure = {
//    $0 * $1
//}

multipleClosure(2, 4)

func operateOnNumbers(a: Int, _ b: Int, operation: (Int, Int)->Int) -> Int
{
    let result = operation(a, b)
    return result
}
operateOnNumbers(4, 2, operation: {
    $0 + $1
})
//trailing closure syntax, the same as the previous code
//Condition: the closure is the final parameter passed to a function
operateOnNumbers(4, 2)
{
    $0 + $1
}

//Closure with no return type
let voidClosure: ()->Void
voidClosure = {
    print("It is a return-void closure")
}

//Closure: capturing from the enclosing scope
var counter = 0
let incrementCounter = {
    counter++
}
incrementCounter()
incrementCounter()
incrementCounter()


//Optional type
var errorCode : Int?
errorCode = nil
errorCode = 10
print(errorCode)

//Wrapped optionals
let ageInteger: Int? = 30//ageInteger is a box contains 30, not the value 30
print(ageInteger)

//Force unwrapping: look inside the box and take out the value
print(ageInteger!)
var nilValue: Int? = nil
if nilValue != nil
{
    var unwrappedValue = nilValue!
}

//if let binding: the safest ways to unwrap an optional's value
if let unwrappedValue: Int = nilValue
{
    print("nilValue is not nil")
}

//Nil coalescing: You use it when you want to get a value out of the optional no matter what-and in the case of nil, ypu will use a default value
var optionalInt: Int? = 10
print(optionalInt)
var optionalResult: Int = optionalInt ?? 0
print(optionalResult)



//Arrays:Arrays are a value type, so they are copied when assigned to a new variable or passed as an argument to a function

//Create arrays
//Explicit declaration
let explicitNumbersArray: Array<Int> = [2, 4, 6 , 8]
//Inferred declaration
let inferredNumbersArray = Array<Int>([2, 4, 6, 8])
let alsoInferredNumbersArray = [Int]([2, 4, 6, 8])

//Array literals
let evenNumbersArray = [2, 4, 6, 8]
let vowels = ["A", "E", "I", "O", "U"]
let allZeros = [Int](count: 5, repeatedValue: 0)
let allZeros2 = Array<Int>(count: 5, repeatedValue: 0)

//Access element
//Array properties and methods
var players = ["Alice", "Bob", "Cindy", "Dan"]
players.isEmpty
players.count
print(players.first)//Optional type
print(players.last)//Optional type
print(players.minElement())//Optional type
print(players.maxElement())//Optional type
print(players[0])
print(players[3])
//Using ranges
print(players[1...2])
players.contains("Bob")
//Appending elements
players.append("Eli")
players += ["Gina"]
//Inserting elements
players.insert("Frank", atIndex: 5)
//Removeing elements
players.removeLast()
players.removeAtIndex(2)
//Updating elements
print(players)
players[4] = "Franklin"
print(players)

let arrayFuncUpdate: (inout [String], Int, String) -> Void = {(inout array: Array<String>, index: Int, newString: String) in
    
    array[index] = newString
}
arrayFuncUpdate(&players, 0, "haha")
print(players)
players[0...1] = ["RR1", "RR2", "RR3", "RR4"]
print(players)
//Not change pre array after sort
players.sort()
print(players)

var playersBySort = players.sort()
print(playersBySort)

for playerName in playersBySort
{
    print(playerName)
}
for (index, playerName) in playersBySort.enumerate()
{
    print("\(index + 1). \(playerName)")
}

//Sequence operations
let scores = [2, 2, 8, 6, 1, 2]
//Reduce
var scoresSum = scores.reduce(0, combine: +)
//Filter:the parameter in filter(_:) is a closure
print(scores.filter({
    $0>5
}))
//Map
print(scores.map({
    $0 * 2
}))




//Dictionary

//Create dictionary
//Explicit declaration
let explicitDict: Dictionary<String, Int> = ["Anna": 2, "Brain": 2, "Craig": 8, "Donna": 6]
//Inferred declaration
let inferredDict = Dictionary<String, Int>()
let alsoInferredDict = [String: Int]()

//Dictionary literals
let nameAndScores = ["Anna": 2, "Brain": 2, "Craig": 8, "Donna": 6]

//Access values
nameAndScores["Anna"]
nameAndScores.isEmpty
nameAndScores.count
nameAndScores.keys
print(Array(nameAndScores.keys))
nameAndScores.values
print(Array(nameAndScores.values))

//Add pairs
var bobData = ["name": "Bob", "profession": "Card Player", "country": "USA"]
bobData.updateValue("CA", forKey: "state")
bobData["city"] = "San Francisco"
print(bobData)
//Modify pairs
bobData["profession"] = "Mailman"
print(bobData)
//Remove pairs
bobData.removeValueForKey("state")
bobData["city"] = nil
print(bobData)

for (key, value) in nameAndScores
{
    print("\(key) - \(value)")
}

//Sequence operations
print(nameAndScores.reduce("", combine: {$0 + "\($1),"}))

//hashValue
"some string".hashValue





//Sets
//Create sets
let setOne: Set<Int> = [1, 2, 3, 4]
let setTwo = Set<Int>()

//Access elements
let someSet: Set<Int> = [1, 2, 3, 1]
someSet.isEmpty
someSet.count
someSet.contains(1)
//Add and remove elements
var myTimes: Set = ["8am", "9am", "10am"]
myTimes.insert("11am")
myTimes.remove("8am")
for element in myTimes
{
    print(element)
}
//Set operations
let aTimes: Set = ["9am", "11am", "1pm"]
let bTimes: Set = ["8am", "9am", "11am"]
let unionSet = aTimes.union(bTimes)
let intersectSet = aTimes.intersect(bTimes)
let subtractSet1 = aTimes.subtract(bTimes)
let subtractSet2 = bTimes.subtract(aTimes)
let exclusiveOrSet = aTimes.exclusiveOr(bTimes)





//Structure:name type, not reference type
struct Location
{
    var latitude: Double = 1.0
    var longitude: Double = 1.0
    
    init()
    {
        
    }
    
    //Overwrite, auto initializer
    init(latitude: Double, longitude: Double)
    {
        self.latitude = latitude
        self.longitude = longitude
    }
    
    init(coodinateString: String)
    {
        let crdSplit = coodinateString.characters.split(",")
        self.latitude = atof(String(crdSplit.first!))
        self.longitude = atof(String(crdSplit.last!))
    }
}

struct DeliveryRange
{
    var range: Double
    let center: Location
}

let locationDefualt = Location()
print(locationDefualt)
let storeLocation = Location(latitude: 44.21, longitude: -93.2)
storeLocation.latitude
storeLocation.longitude
let coords = Location(coodinateString: "44.9871, -93.2758")
coords.latitude
coords.longitude
var pizzaRange = DeliveryRange(range: 200, center: storeLocation)
pizzaRange.range
pizzaRange.center


//Struct extensions
extension Location
{
    func isNorthernHemisphere() -> Bool {
        return latitude > 0.0
    }
}
locationDefualt.isNorthernHemisphere()
//Name type
var coord1 = Location(coodinateString: "44.9871, -93.2758")
var coord2 = coord1
coord1.latitude = 11.11
print(coord1.latitude)
print(coord2.latitude)




//Class:reference type, not name type
class Person
{
    var firstName: String
    var lastName:String
    
    init(firstName:String, lastName: String)
    {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func fullName() ->String
    {
        return "\(firstName) \(lastName)"
    }
    
}
//Reference type
var john = Person(firstName: "Johnny", lastName: "Appleseed")
var homeOwner = john
john.firstName = "John"
print(john.fullName())
print(homeOwner.fullName())
//The == check if two values are equal
//The === identity operator compares the memory address of two references
print(john === homeOwner)
var comparePersion1 = Person(firstName: "Johnny", lastName: "Appleseed")
var comparePersion2 = Person(firstName: "Johnny", lastName: "Appleseed")
print(comparePersion1 === comparePersion2)
print(comparePersion1.firstName == comparePersion2.firstName)

//Class access control: public, internal, private
/*!
*    
public：可以访问自己模块中任何 public，被 import 到其他模块，也可以被访问
internal：只能访问自己模块中任何 internal 实体，不能访问其他模块中的 internal 实体
private：顾名思义，就是私有，只能在当前源文件中使用。

根据特点决定，如果编写 App 的话，直接用默认的就好了，就是啥也不用敲
如果编写 Framework，请认真思考流程，认真设计，外部接口要设置 public，而一些不想让别人看见的就可以用 private 或者 internal 修饰了。
*/
public class AccessControl
{
    public var publicString: String
    
    init(publicString: String)
    {
        self.publicString = publicString
    }
    
    internal class InternalClass
    {
        private func sayHi()
        {
            print("Hi!")
        }
    }
    func speak()
    {
        InternalClass().sayHi()
    }
}

//Inherits
class Student: Person {
    var grades: [Int] = []
    
    func recordGrade(grade: Int) {
        grades.append(grade)
    }
}
let johnny = Person(firstName: "Johnny", lastName: "Appleseed")
let jane = Student(firstName: "Jane", lastName: "Appleseed")

//Polymorphism
func phonebookName(person: Person) -> String {
    return "\(person.lastName), \(person.firstName)"
}
let person = Person(firstName: "Johnny", lastName: "Appleseed")
let star = Student(firstName: "Jane", lastName: "Appleseed")
print(phonebookName(person))
print(phonebookName(star))

//Overide
class StudentAthleteTemp: Student {
    var failedClasses: [Int] = []
    
    override func recordGrade(grade: Int) {
        super.recordGrade(grade)
        if grade < 0 || grade > 6 {
            failedClasses.append(grade)
        }
    }
    
    func athleteIsEligible() -> Bool {
        return failedClasses.count < 3
    }
}

//Preventing inheritance
/*

final class Student: Person {
//...
}
// Build error!
class StudentAthlete: Student {
//...
}

Or

class Student: Person {
final func recordGrade(grade: Grade) {
//...
} }
class StudentAthlete: Student {
// Build error!
override func recordGrade(grade: Grade) {
//...
} }

*/

//Inheritance and class initialization
class StudentAthlete: Student {
    var sports: [String]
    init(firstName: String, lastName: String, sports: [String]) {
        self.sports = sports
        super.init(firstName: firstName, lastName: lastName)
    }
}

//Required
/*

required修饰符的使用规则:

1. required修饰符只能用于修饰类初始化方法。
2. 当子类含有异于父类的初始化方法时（初始化方法参数类型和数量异于父类），子类必须要实现父类的required初始化方法，并且也要使用required修饰符而不是override。
3. 当子类没有初始化方法时，可以不用实现父类的required初始化方法。

*/
class Student2: Person {
    var grades: [Int]
    override required init(firstName: String, lastName: String) {
        grades = []
        super.init(firstName: firstName, lastName: lastName)
    }
    
    init(transfer: Student2) {
        grades = []
        super.init(firstName: transfer.firstName, lastName: transfer.lastName)
    }
    //...
}
// You require the StudentAthlete class to implement the initializer marked required in the superclass.
class StudentAthlete2: Student2 {
    var sports: [String]
    // Now required by the compiler!
    required init(firstName: String, lastName: String) {
        self.sports = []
        super.init(firstName: firstName, lastName: lastName)
    }
    init(firstName: String, lastName: String, sports: [String]) {
        self.sports = sports
        super.init(firstName: firstName, lastName: lastName)
    }
    init(transfer: Student2, sports: [String]) {
        self.sports = sports
        super.init(transfer: transfer)
    }
}

//Convenience
//所有的convenience初始化方法都必须调用同一个类中的designated初始化完成设置，另外convenience的初始化方法是不能被子类重写或从子类中以super的方式被调用的。
//只要在子类中实现重写了父类convenience方法所需要的init方法的话，我们在子类中就也可以使用父类的convenience初始化方法了。
/*

1. Adesignatedinitializermustcalladesignatedinitializerfromitsimmediate superclass.
2. Aconvenienceinitializermustcallanotherinitializerfromthesameclass.
3. Aconvenienceinitializermustultimatelycalladesignatedinitializer.

*/
class ClassA {
    let numA: Int
    init(num: Int) {
        numA = num
    }
    convenience init(bigNum: Bool) {
        self.init(num: bigNum ? 10000 : 1)
    }
}
class ClassB: ClassA {
    let numB: Int
    override init(num: Int) {
        numB = num + 1
        super.init(num: num)
    }
}
let anObj = ClassB(bigNum: true)
print(anObj.numA, anObj.numB)


//Deinitialization
//Unlike init, deinit isn't required and is automatically invoked by Swift.
/*

class Person {
    //...
    deinit {
        print("\(firstName) \(lastName) is being removed from memory!")
    }
}

*/


//Retain cycles and weak references
//Memory leak example
/*
class Student: Person {
    var partner: Student?
    deinit {
        print("\(firstName) being deallocated!")
    }
}
var john: Student? = Student(firstName: "Johnny", lastName: "Appleseed")
var jane: Student? = Student(firstName: "Jane", lastName: "Appleseed")
john?.partner = jane
jane?.partner = john
john = nil
jane = nil
*/



//Enumerations

//Declaring an enumeration
enum Month: Int {
    case January = 1, February, March, April, May, June, July,August, September, October, November, December
}


func schoolSemester(month: Month) -> String {
    switch month {
    case Month.August, Month.September, Month.October,
    Month.November, Month.December:
        return "Autumn"
    case Month.January, Month.February, Month.March, Month.April,
    Month.May:
        return "Spring"
    default:
        return "Not in the school year"
    }
}
schoolSemester(Month.April)

//Accessing the raw value
func monthsUntilWinterBreak(month: Month) -> Int {
    return Month.December.rawValue - month.rawValue
}
monthsUntilWinterBreak(.April) // 8

//Initializing with the raw value
if let fifthMonth = Month(rawValue: 5) {
    monthsUntilWinterBreak(fifthMonth)  // 7
}

//Getter and Setter: Key word - newValue
struct TV {
    var height: Double
    var width: Double
    
    var diagonal: Int {
        // 1
        get { // 2
            return Int(round(sqrt(height * height + width * width)))
        }
        set { // 3
            let ratioWidth: Double = 16
            let ratioHeight: Double = 9
            // 4
            height = Double(newValue) * ratioHeight /
                sqrt(ratioWidth * ratioWidth + ratioHeight * ratioHeight)
            width = height * ratioWidth / ratioHeight
        } }
}


//Property observers
//when unlocks a new level, it will update the highestLevel type property if the level is a new high.
struct Level {
    static var highestLevel = 1//Type property
    let id: Int
    var boss: String
    var unlocked: Bool {
        didSet {
            if unlocked && id > Level.highestLevel {
                Level.highestLevel = id
            }
        } }
}

var level1 = Level(id: 2, boss: "haha", unlocked: yes)
Level.highestLevel
level1.unlocked = yes
Level.highestLevel

//Limiting a variable: Key word - oldValue
class LightBulb {
    static let maxCurrent = 40
    var currentCurrent = 0 {
        didSet {
            if currentCurrent > LightBulb.maxCurrent {
                print("Current too high, falling back to previous setting.")
                currentCurrent = oldValue
            }
        } }
}
var light = LightBulb()
light.currentCurrent = 50
var current = light.currentCurrent // 0
light.currentCurrent = 40
current = light.currentCurrent // 40


//Lazy properties
//If you have a property that might take some time to calculate, you don't want to slow things down until you actually need the property. You can use the lazy stored property!
//A lazy property is different from a computed property. In a lazy property, the closure gets calculated only the first time the property is accessed. On the other hand, circumference is a computed property and therefore gets calculated every time it's accessed. You expect the circumference's value to change if the radius changes.
//pi, as a lazy stored property, only gets calculated the first time. That's great, because who wants to calculate the same thing over and over again?
//The lazy property must be a variable, defined with var, instead of a constant defined with let. When you first initialize the class, the property effectively has no value. Then when some part of your code requests the property, the runtime changes the property's value. So even though the value only changes once, you still use var.
class Circle {
    lazy var pi = {
        return ((4.0 * atan(1.0 / 5.0)) - atan(1.0 / 239.0)) * 4.0//Lazy property
    }()//{ }() is the pattern for a closure that is evaluated immediately, and you use it for lazy properties or to add computation to a stored property.
    var radius: Double = 0
    var circumference: Double {
        return pi * radius * radius//Computed property
    }
    init (radius: Double) {
        self.radius = radius
    }
}
var circle = Circle(radius: 5)
circle.circumference
circle.radius = 6
circle.circumference

//Summary: Stored property, Type property, Computed property, Lazy property



//Mutating methods in struct
//Structures have a limitation: methods cannot change the values of the instance without being marked as mutating.
struct MutatingStruct {
    var s: Int
    mutating func change(c:Int){
        self.s = c
    }
}

//Methods that alter the properties of a class instance are not marked as mutating
class Car {
    // 1
    let make: String
    // 2
    private(set) var color: String  //declare color as private(set) so that it can't be altered from outside of the class.
    init() {
        make = "Ford"
        color = "Black"
    }
    required init(make: String, color: String) {
        self.make = make
        self.color = color
    }
    // 3
    func paint(color: String) {
        self.color = color
    }
}

//Type methods
struct Utils {
    // 1
    static func factorial(number: Int) -> Int {
        // 2
        return (1...number).reduce(1, combine: *)
    }
}
// 3
let factorial = Utils.factorial(6) // 720


//Protocol
enum Direction {
    case Left
    case Right
}

protocol Vehicle {
    var weight: Int { get }
    var name: String { get set }
    
    func accelerate()
    func stop()
//    func turn()
//    func turn(direction: Direction)
//    func description() -> String
}
protocol WheeledVehicle: Vehicle {
    var numberOfWheels: Int { get }
    var wheelSize: Double { get set }
}

//Implementing protocols
class Bike: Vehicle {
    var peddling: Bool = false
    var brakesApplied: Bool = false
    
    var weight: Int{
        return 2
    }
    
    var name: String {
        get {
            return "zhqiux"
        }
        set {
            self.name = "newName"
        }
    }
    
    func accelerate() {
        peddling = true
        brakesApplied = false
    }
    func stop() {
        peddling = false
        brakesApplied = true
    }
}

//Typealias in protocols
protocol WeightCalculatable {
    typealias WeightType
    func calculateWeight() -> WeightType
}
class HeavyThing: WeightCalculatable {
    // This heavy thing only needs integer accuracy
    typealias WeightType = Int
    func calculateWeight() -> Int {
        return 100 }
}
class LightThing: WeightCalculatable {
    // This light thing needs decimal places
    typealias WeightType = Double
    func calculateWeight() -> Double {
        return 0.0025
    }
}


//Implementing multiple protocols
protocol Wheeled {
    var numberOfWheels: Int { get }
}
/*

class Bike: Vehicle, Wheeled {
// Implement both Vehicle and Wheeled
}

*/



//Extensions and protocol conformance
protocol WhatType {
    var typeName: String { get }
}
extension String: WhatType {
    var typeName: String {
        return "I'm a String"
    }
}
let myType: String = "Swift by Tutorials!"
myType.typeName // I'm a String


class ClassyBike: Wheeled {
    let numberOfWheels = 2
}
struct StructyBike: Wheeled {
    let numberOfWheels = 2
}
enum EnummyBike: Wheeled {
    case Mountain
    case Road
    case Tricycle
    var numberOfWheels: Int {
        switch self {
        case Mountain, Road:
            return 2
        case Tricycle:
            return 3 }
    } }
// Class
var wheels: Wheeled = ClassyBike()
wheels.numberOfWheels // 2
// Struct
wheels = StructyBike()
wheels.numberOfWheels // 2
// Enum
wheels = EnummyBike.Tricycle
wheels.numberOfWheels // 3




//Protocols in the standard library
struct Record {
    var wins: Int
    var losses: Int
}

extension Record: Equatable {}
func ==(lhs: Record, rhs: Record) -> Bool {
    return lhs.wins == rhs.wins && lhs.losses == rhs.losses
}

let recordA = Record(wins: 10, losses: 5)
let recordB = Record(wins: 10, losses: 5)
recordA == recordB

extension Record: Comparable {}
func <(lhs: Record, rhs: Record) -> Bool {
    let lhsPercent = Double(lhs.wins) / (Double(lhs.wins) +
        Double(lhs.losses))
    let rhsPercent = Double(rhs.wins) / (Double(rhs.wins) +
        Double(rhs.losses))
    return lhsPercent < rhsPercent
}
let team1 = Record(wins: 23, losses: 8)
let team2 = Record(wins: 23, losses: 8)
let team3 = Record(wins: 14, losses: 11)
team1 < team2 // false
team1 > team3 // true
//You only defined < but what about >? Similarly, you defined == but what about != for inequality? Swift gives you a helping hand here and automatically generates those other comparison operators. If you read the documentation for Equatable and Comparable, you'll see it tells you that only == and < are needed.

//"Free" functions conform to Equatable and Comparable.
let leagueRecords = [team1, team2, team3]
leagueRecords.sort()
// {wins 14, losses 11}
// {wins 23, losses 8}
// {wins 23, losses 8}
leagueRecords.maxElement() // {wins 23, losses 8}
leagueRecords.minElement() // {wins 23, losses 8}
leagueRecords.startsWith([team1, team2]) // true
leagueRecords.contains(team1) // true

extension Record: CustomStringConvertible {
    var description: String {
        return "\(wins) - \(losses)"
    }
}
print(team1)





//Protocol extensions
protocol TeamRecord {
    var wins: Int { get }
    var losses: Int { get }
    func winningPercentage() -> Double
}
extension TeamRecord {
    var gamesPlayed: Int {
        return wins + losses//computed property
    }
}
//Now you can write a simple type that adopts TeamRecord, and use gamesPlayed without the need to re-implement it!
struct BaseballRecord: TeamRecord {
    var wins: Int
    var losses: Int
    func winningPercentage() -> Double {
        return Double(wins) / Double(wins) + Double(losses)
    }
}
let sanFranciscoSwifts = BaseballRecord(wins: 10, losses: 5)
sanFranciscoSwifts.gamesPlayed // 15
