//1⃣️
/*
print 函数 print(_:separator:terminator:)
let a = 1
print(a)
print(a,terminator: "")
print(a)   //: 1 \n 11
*/

//2⃣️
/*
同一行内写多条独立的语句 ";"
let cat = "🐱"; print(cat)
*/

//3⃣️
/*
当推断浮点数的类型时，Swift 总是会选择 Double 而不是 Float。
let anotherPi = 3 + 0.14159 // anotherPi 会被推测为 Double 类型
*/

//4⃣️
/*
整数和浮点数的转换必须显式指定类型：
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
// pi 等于 3.14159，所以被推测为 Double 类型
*/

//5⃣️
//类型别名
//typealias AudioSample = UInt16

//6⃣️
//布尔值 Bool? : true / false

//7⃣️
/*
元组  元组内的值可以是任意类型，并不要求是相同类型。
let http404Error = (firstone: 404, secondone: "Not Found")
print(http404Error.firstone) // 404
print(http404Error.1) // Not Found
// http404Error 的类型是 (Int, String)，值是 (404, "Not Found")
*/

//8⃣️
/*
可选 optional
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber) // option + 左键点击 convertedNumber
convertedNumber 被推测为类型 "Int?"， 或者类型 "optional Int"
如果你声明一个可选常量或者变量但是没有赋值，它们会自动被设置为 nil
var surveyAnswer: String?
surveyAnswer 被自动设置为 nil
nil 不是指针——它是一个确定的值，用来表示值缺失。任何类型的可选状态都可以被设置为 nil，不只是对象类型。
*/

//9⃣️
/*
可选绑定
使用可选绑定（optional binding）来判断可选类型是否包含值，如果包含就把值赋给一个临时常量或者变量。
if let constantName = someOptional {
    statements
}
你可以包含多个可选绑定或多个布尔条件在一个 if 语句中，只要使用逗号分开就行。只要有任意一个可选绑定的值为   nil，或者任意一个布尔条件为 false，则整个 if 条件判断为 false。下面的两个 if 语句是等价的：
if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
        print("\(firstNumber) < \(secondNumber) < 100")
}
// 输出“4 < 42 < 100”
if let firstNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firstNumber < secondNumber && secondNumber < 100 {
            print("\(firstNumber) < \(secondNumber) < 100")
        }
    }
}
//输出“4 < 42 < 100”
*/

//1⃣️0⃣️
/*
 隐式解析可选类型
 let possibleString: String? = "An optional string."
 let forcedString: String = possibleString! // 需要感叹号来获取值
 
 let assumedString: String! = "An implicitly unwrapped optional string."
 let implicitString: String = assumedString  // 不需要感叹号
 */


//1⃣️2⃣️
/*
使用断言进行调试
调用 Swift 标准库的 assert(_:_:file:line:) 函数来写一个断言
let age = -3
assert(age >= 0, "A person's age cannot be less than zero") // false时显示错误
//因为 age < 0，所以断言会触发
强制执行 先决条件
precondition(_:_:file:line:)
assert是断言（必须成立），precondition是先决条件，是满足条件才能继续往下。两者的区别就是assert只在debug环境下生效，而precondition是debug和release都生效。
 */


//1⃣️3⃣️
/*
一元运算符 一元运算符对单一操作对象操作（如 -a）前置运算符需紧跟在操作对象之前（如 !b）
后置运算符需紧跟在操作对象之后（如 c!）
二元运算符 +
三元运算符 a ? b : c
三元运算符可以学会应用在 if {} else {}
let contentHeight = 40
let hasHeader = true
let rowHeight = contentHeight + (hasHeader ? 50 : 20)
// rowHeight 现在是 90
*/

//1⃣️4⃣️
/*
空合运算符
空合运算符（a ?? b）将对可选类型 a 进行空判断，如果 a 包含一个值就进行解包，否则就返回一个默认值 b。表达式 a 必须是 Optional 类型。默认值 b 的类型必须要和 a 存储值的类型保持一致
a != nil ? a! : b
a ?? b 短路求值。
*/

//1⃣️5⃣️
/*
赋值运算符
let b = 10
如果赋值的右边是一个多元组，它的元素可以马上被分解成多个常量或变量：let (x, y) = (1, 2)
Swift 的赋值操作并不返回任何值 if x = y 为无效语句
*/

//1⃣️6⃣️
/*
算数运算符
溢出运算符来实现溢出运算（如 a &+ b）
加法运算符也可用于 String 的拼接："hello, " + "world"  // 等于 "hello, world"
*/

//1⃣️7⃣️
/*
组合赋值运算符
var a = 1
a += 2
a 现在是 3
*/

//1⃣️8⃣️
//比较运算符
// 恒等（===）不恒等（!==) : ListNode 比较

//1⃣️9⃣️
/*
如果两个元组的元素相同，且长度相同的话，元组就可以被比较。比较元组大小会按照从左到右、逐值比较的方式，直到发现有两个值不等时停止。
(1, "zebra") < (2, "apple")   // true，因为 1 小于 2
(3, "apple") < (3, "bird")    // true，因为 3 等于 3，但是 apple 小于 bird
(4, "dog") == (4, "dog")      // true，因为 4 等于 4，dog 等于 dog
("blue", -1) < ("purple", 1)       // 正常，比较的结果为 true
("blue", false) < ("purple", true) // 错误，因为 Bool 不能被比较
*/

//2⃣️0⃣️
/*
区间运算符
闭区间运算符 a...b
半开区间运算符 for i in a..<b / for name in names[..<b]
单侧区间运算符 for name in names[a...] / for name in names[...a]
单侧区间不止可以在下标里使用
let range = ...5
range.contains(7)   // false
range.contains(4)   // true
range.contains(-1000)  // true
*/

//2⃣️1⃣️
/*
逻辑运算符
逻辑非运算符（!a）对一个布尔值取反
逻辑与运算符（a && b）
逻辑或运算符（a || b）
用括号明确优先级 可读性比简洁性更重要
if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword
if (enteredDoorCode && passedRetinaScan) || hasDoorKey || knowsOverridePassword
*/

//2⃣️2⃣️
/*
字符串 值类型 通过 + 符号就可以非常简单的实现两个字符串的拼接操作。
Swift默认拷贝字符串的行为保证了在函数/方法向你传递的字符串所属权属于你，无论该值来自于哪里。你可以确信传递的字符串不会被修改，除非你自己去修改它。

多行字符串字面量 """
              body
              """
 续行符 \
初始化空字符串:
var emptyString = ""               // 空字符串字面量
var anotherEmptyString = String()  // 初始化方法
 两个字符串均为空并等价。

可通过 for-in 循环来遍历字符串
for character in "Dog!🐶" {
    print(character)
}
字符串可以通过传递一个值类型为 Character 的数组作为自变量来初始化：
let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print(catString)
// 打印输出：“Cat!🐱”
*/

//2⃣️3⃣️ 遵循 Collection 协议 如下文所示是使用在 String 中，你也可以使用在 Array、Dictionary 和 Set 中。
/*
访问和修改字符串 字符串索引
使用 startIndex 属性可以获取一个 String 的第一个 Character 的索引。
使用 endIndex   属性可以获取一个 String 的最后一个 Character 的后一个位置的索引
let greeting = "Guten Tag!"
greeting[greeting.startIndex]
// G
greeting[greeting.index(before: greeting.endIndex)]
// !
greeting[greeting.index(after: greeting.startIndex)]
// u
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]
// a

说实话 感觉用处不大⬇️ 使用indices属性会创建一个包含全部索引的范围（Range），用来在一个字符串中访问单个字符。
for index in greeting.indices {
   print("\(greeting[index]) ", terminator: "")
}
// 打印输出“G u t e n   T a g ! ”
*/

//2⃣️4⃣️ 遵循 RangeReplaceableCollection 协议 如下文所示是使用在 String 中，你也可以使用在 Array、Dictionary 和 Set 中。
/*
insert(_:at:) //插入字符
insert(contentsOf:at:) //插入字符串
remove(at:) //删除字符
removeSubrange(_:) //删除字符串
/* 演示⬇️
var welcome = "hello"
welcome.insert("!", at: welcome.endIndex)
// welcome 变量现在等于 "hello!"
welcome.insert(contentsOf:" there", at: welcome.index(before: welcome.endIndex))
// welcome 变量现在等于 "hello there!"
welcome.remove(at: welcome.index(before: welcome.endIndex))
// welcome 现在等于 "hello there"
welcome.removeSubrange(welcome.index(welcome.endIndex, offsetBy: -6)..<welcome.endIndex)
// welcome 现在等于 "hello"
*/
 */

//2⃣️5⃣️ 子字符串 遵循 StringProtocol 协议
/*
使用下标或者 prefix(_:) 之类的方法 —— 就可以得到一个 Substring 的实例，而非另外一个 String
你可以使用同样的方式去操作 Substring 和 String
跟 String 不同的是，你只有在短时间内需要操作字符串时，才会使用 Substring。当你需要长时间保存结果时，就把 Substring 转化为 String 的实例：Substring 不适合长期存储 —— 因为它重用了原 String 的内存空间⬇️
/*
 let greeting = "Hello, world!"
 let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
 let beginning = greeting[..<index]
 // beginning 的值为 "Hello" 属性为 String.SubSequence
 // typealias SubSequence = Substring
 // 把结果转化为 String 以便长期存储。
 let newString = String(beginning)
*/
 */

//2⃣️6⃣️
/*
prefix(_:)/suffix(_:) 返回 Substring
hasPrefix(_:)/hasSuffix(_:) 检查字符串是否拥有特定前缀/后缀，两个方法均接收一个 String 类型的参数，并返回一个布尔值
*/

//2⃣️7⃣️ 集合类型
/*
数组（Array）、集合（Set）和字典（Dictionary）
数组是 有序数据 的集。
集合是 无序无重复数据 的集。字典是 无序 的键值对的集。
Swift 中的数组、集合和字典必须 明确 其中保存的键和值类型
*/

//数组🤮😇
/*
var someInts = [Int]() // 等价于 someInts : [Int] = []
print(someInts.count) // 0
var x1 = [Double](repeating: 0.0, count: 2) //等价于 x2 = Array(repeating: 0.0, count: 2)
可以使用加法操作符（+）来组合两个已存在的 相同类型 数组
insert(_:at:) | append(_:) | remove(at:) | removeLast()
数据项 被移除后 数组中的空出项会被 自动填补
for item in shoppingList
for (index, value) in shoppingList.enumerated() // value = value
for i in 0..<shoppingList.count
*/

//集合🤮😇
/*
var letters = Set<Character>()
for letter in letters | for letter in letters.sorted()
isEmpty | insert(_:) | contains(_:)
你可以通过调用集合的 remove(_:)  方法去删除一个元素，如果它是该集合的一个元素则删除它并且返回它的值，若该集合不包含它，则返回 nil。另外，集合可以通过 removeAll() 方法删除所有元素。
if let removedGenre = favoriteGenres.remove("Rock") {
    print("\(removedGenre)? I'm over it.")
} else {
    print("I never much cared for that.")
}
// 打印“Rock? I'm over it.”

intersection(_:) 交集
symmetricDifference(_:) 不相交的值
union(_:) 两个集合的所有值
subtracting(_:) 方法根据不在另一个集合中的值创建一个新的集合
使用“是否相等”运算符（==）来判断两个集合包含的值是否全部相同
isSubset(of:) 一个集合中的所有值是否也被包含在另外一个集合中
isSuperset(of:) 一个集合是否包含另一个集合中所有的值
isStrictSubset(of:) 或者 isStrictSuperset(of:) 方法来判断一个集合是否是另外一个集合的子集合或者父集合并且两个集合并不相等
isDisjoint(with:) 是否没有交集
*/

//字典🤮😇 Key, Value
/*
var namesOfIntegers: [Int: String] = [:] //  = [Int:String]()
isEmpty
updateValue(_:forKey:) 方法在这个键不存在对应值的时候会设置新值或者在存在时更新已存在的值。和下标的方式不同，updateValue(_:forKey:) 这个方法返回更新值之前的原值。这样使得你可以检查更新是否成功。
if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUB was \(oldValue).")
}
  输出“The old value for DUB was Dublin.”
使用下标语法通过将某个键的对应值赋值为 nil 来从字典里移除一个键值对
removeValue(forKey:) 方法也可以用来在字典中移除键值对。这个方法在键值对存在的情况下会移除该键值对并且返回被移除的值或者在没有对应值的情况下返回 nil
if let removedValue = airports.removeValue(forKey: "DUB") {
    print("The removed airport's name is \(removedValue).")
} else {
    print("The airports dictionary does not contain a value for DUB.")
}
// 打印“The removed airport's name is Dublin Airport.”
for (airportCode, airportName) in airports
for airportCode in airports.keys
for airportName in airports.values
可以直接使用 keys 或者 values 属性构造一个新数组
let airportCodes = [String](airports.keys)
 airportCodes 是 ["YYZ", "LHR"]
let airportNames = [String](airports.values)
 airportNames 是 ["Toronto Pearson", "London Heathrow"]
*/

//2⃣️8⃣️
/* 控制流
 
 Swift 提供了多种流程控制结构
 可以多次执行任务的 while 循环 基于特定条件选择执行不同代码分支的 if、guard 和 switch 语句
 还有控制流程跳转到其他代码位置的 break 和 continue 语句
 
 Swift 还提供了 for-in 循环，用来更简单地遍历数组（Array），字典（Dictionary），区间（Range），字符串（String）和其他序列类型。
 
 switch 语句
 case 还可以匹配很多不同的模式，包括范围匹配，元组（tuple）和特定类型匹配
 switch 语句的 case 中匹配的值可以声明为临时常量或变量，在 case 作用域内使用，也可以配合 where 来描述更复杂的匹配条件
 
 🌸For-In: for-in 循环来遍历 范围、数组、字典 和 字符串。
 let names = ["Anna", "Alex", "Brian", "Jack"]
 for name in names {
     print("Hello, \(name)!")
 }
 
 let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
 for (animalName, legCount) in numberOfLegs {
     print("\(animalName)s have \(legCount) legs")
 }
 
 for index in 1...5 {
     print("\(index) times 5 is \(index * 5)")
 }
 
 for _ in 1...power {
     answer *= base
 }
 
 let minutes = 60
 for tickMark in 0..<minutes {
     // 每一分钟都渲染一个刻度线（60次）
 }
 
 使用 stride(from:to:by:) 函数跳过不需要的标记。  stride(from:through:by:)
 let minuteInterval = 5
 for tickMark in stride(from: 0, to: minutes, by: minuteInterval) {
     // 每5分钟渲染一个刻度线（0, 5, 10, 15 ... 45, 50, 55）
 }
 

 🌸While 循环：while 循环会一直运行一段语句直到条件变成 false
 while 循环，每次在循环开始时计算条件是否符合
 repeat-while 循环，每次在循环结束时计算条件是否符合
 
 🌸条件语句 Swift 提供两种类型的条件语句：if 语句和 switch 语句
 if : else 语句是可选的
 switch : 每一个 case 都是代码执行的一条分支。
 只要第一个匹配到的 case 分支完成了它需要执行的语句，整个 switch 代码块完成了它的执行。
 switch 语句必须是完备的。这就是说，每一个可能的值都必须至少有一个 case 分支与之对应。在某些不可能涵盖所有值的情况下，你可以使用默认（default）分支来涵盖其它所有没有对应的值，这个默认分支必须在 switch 语句的最后面。
 
 每一个 case 分支都必须包含至少一条语句:case "a": // 无效，这个分支下面没有语句
 
 let someCharacter: Character = "z"
 switch someCharacter {
 case "a":
     print("The first letter of the alphabet")
 case "z":
     print("The last letter of the alphabet")
 default:
     print("Some other character")
 }
 // 输出“The last letter of the alphabet”
 
 为了让单个 case 同时匹配 a 和 A，可以将这个两个值组合成一个复合匹配，并且用逗号分开：
 case "a", "A":
     print("The letter A")
 
 case 分支的模式也可以是一个值的区间
 case 1..<5:
     naturalCount = "a few"
 
 我们可以使用元组在同一个 switch 语句中测试多个值。元组中的元素可以是值，也可以是区间。另外，使用下划线（_）来匹配所有可能的值。
 let somePoint = (1, 1)
 switch somePoint {
 case (0, 0):
     print("\(somePoint) is at the origin")
 case (_, 0):
     print("\(somePoint) is on the x-axis")
 case (0, _):
     print("\(somePoint) is on the y-axis")
 case (-2...2, -2...2):
     print("\(somePoint) is inside the box")
 default:
     print("\(somePoint) is outside of the box")
 }
 // 输出“(1, 1) is inside the box”
 
 值绑定:case 分支允许将匹配的值声明为临时常量或变量，并且在 case 分支体内使用 —— 这种行为被称为值绑定
 let anotherPoint = (2, 0)
 switch anotherPoint {
 case (let x, 0):
     print("on the x-axis with an x value of \(x)")
 case (0, let y):
     print("on the y-axis with a y value of \(y)")
 case let (x, y):
     print("somewhere else at (\(x), \(y))")
 }
 // 输出“on the x-axis with an x value of 2”
 
 Where:case 分支的模式可以使用 where 语句来判断额外的条件。
 let yetAnotherPoint = (1, -1)
 switch yetAnotherPoint {
 case let (x, y) where x == y:
     print("(\(x), \(y)) is on the line x == y")
 case let (x, y) where x == -y:
     print("(\(x), \(y)) is on the line x == -y")
 case let (x, y):
     print("(\(x), \(y)) is just some arbitrary point")
 }
 // 输出“(1, -1) is on the line x == -y”
 
 🌸控制转移语句
 控制转移语句改变你代码的执行顺序，通过它可以实现代码的跳转。Swift 有五种控制转移语句：continue break return fallthrough  throw
 continue 语句告诉一个循环体立刻停止本次循环，重新开始下次循环。
 break 语句会立刻结束整个控制流的执行。可以在 switch 或 循环语句 中使用，用来提前结束 switch 或 循环语句。
 贯穿（Fallthrough）:
 let integerToDescribe = 5
 var description = "The number \(integerToDescribe) is"
 switch integerToDescribe {
 case 2, 3, 5, 7, 11, 13, 17, 19:
     description += " wang "
     fallthrough
 case 20:
     description += " wang "
 default:
     description += "1."
 }
 print(description)
 // 输出“The number 5 is wang  wang ”
 allthrough 关键字不会检查它下一个将会落入执行的 case 中的匹配条件。fallthrough 简单地使代码继续连接到下一个 case 中的代码，这和 C 语言标准中的 switch 语句特性是一样的。
 */

//2⃣️9⃣️
/* 带标签的语句
 蛇和梯子：gameloop(标签)
 let finalSquare = 25
 var board = [Int](repeating: 0, count: finalSquare + 1)
 board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
 board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
 var square = 0
 var diceRoll = 0
 
 gameLoop: while square != finalSquare {
     diceRoll += 1
     if diceRoll == 7 { diceRoll = 1 }
     switch square + diceRoll {
     case finalSquare:
         // 骰子数刚好使玩家移动到最终的方格里，游戏结束。
         break gameLoop
     case let newSquare where newSquare > finalSquare:
         // 骰子数将会使玩家的移动超出最后的方格，那么这种移动是不合法的，玩家需要重新掷骰子
         continue gameLoop
     default:
         // 合法移动，做正常的处理
         square += diceRoll
         square += board[square]
     }
 }
 print("Game over!")
 如果上述的 break 语句没有使用 gameLoop 标签，那么它将会中断 switch 语句而不是 while 循环。使用 gameLoop 标签清晰的表明了 break 想要中断的是哪个代码块。
 */

//3⃣️0⃣️
/* 提前退出 guard let else { }
 func greet(person: [String: String]) {
     guard let name = person["name"] else {
         return
     }

     print("Hello \(name)!")

     guard let location = person["location"] else {
         print("I hope the weather is nice near you.")
         return
     }

     print("I hope the weather is nice in \(location).")
 }

 greet(person: ["name": "John"])
 // 输出“Hello John!”
 // 输出“I hope the weather is nice near you.”
 greet(person: ["name": "Jane", "location": "Cupertino"])
 // 输出“Hello Jane!”
 // 输出“I hope the weather is nice in Cupertino.”
 */

//3⃣️1⃣️
/*
 检测 API 可用性
 https://swiftgg.gitbook.io/swift/swift-jiao-cheng/05_control_flow
 */
