
//: ## 集合类型 (Collection Types)
//:Swift 语言提供 Arrays 、 Sets 和Dictionaries 三种基本的集合类型用来存储集合数据。数组（Arrays）是有序
//:数据的集。集合（Sets）是无序无重复数据的集。字典（Dictionaries）是无序的键值对的集。
//:  * 集合的可变性（Mutability of Collections）
//:  * 数组（Arrays）
//:  * 集合（Sets）
//:  * 字典（Dictionaries）

//:  ### 集合的可变性（Mutability of Collections）
//:如果创建一个 Arrays 、 Sets 或 Dictionaries 并且把它分配成一个变量，这个集合将会是可变的
//:分配成常量，那么它就是不可变的，它的大小不能被改变
//:在我们不需要改变集合大小的时候创建不可变集合是很好的习惯。如此 Swift 编译器可以优化我们创建的集合。
//:数组的简单语法
//: * Array<Element> 等价于 [Element]，Element是唯一存在的数据类型
//:创建一个空数组
var someInts = [Int]()
someInts = Array<Int>()

someInts.append(3)
someInts = []
//: 创建一个带有默认值的数组
var threeStrings = [String](count: 4, repeatedValue: "dog")

//: 通过两个数组相加创建一个数组
//:  * 需要是相同类型数组
var firstArr = [Int](count: 3, repeatedValue: 1)
var secondArr = [Int](count: 4, repeatedValue: 3)
var addArr = firstArr + secondArr

//: 用字面量构造数组
var someDoubles = [1,2,3]
var shoppingList:[String] = ["eggs","apple"]

var shoppingList2:Array<String> = ["eggs","apple"]
//: 访问和修改数组
//: * 只读属性count
print("the number of shopinglist is \(shoppingList.count)")
//: * isEmpty属性
if shoppingList.isEmpty {
    print("the count is 0")
} else {
    print("the number of shopinglist is \(shoppingList.count)")
}
//: * append(_:)方法
shoppingList.append("banna")
//: 加法赋值运算符（ += ）
shoppingList += ["Flour"]
//: * 下标语法:数据项的索引值直接放在数组名称的方括号
//:      下标获取值
shoppingList[0]
shoppingList
//:      下标改变某个已有索引值对应的数据值
shoppingList[1] = "orange"

shoppingList
//:      下标改变一系列数据值
shoppingList[1...2] = ["pear","cake"]
shoppingList
//:      不可以用下标访问的形式去在数组尾部添加新项
//shoppingList[4] = "cabbage"

shoppingList









//:  ### 数组（Arrays）

//:  ### 集合（Sets

//:  ### 字典（Dictionaries）


