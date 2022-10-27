//: [Previous](@previous)
//
//import Foundation
//
//func swapValues<Elements> (_ first: inout Elements, _ second: inout Elements) {
//    let intermediate: Elements = first
//
//    first = second
//    second = intermediate
//
//}
//
//var one = 1
//var two = 2
//
//swapValues(&one, &two)
//
//print("First Element \(one), Second Element \(two)")
//

protocol Container {
    associatedtype Item
    
    var items: [Item] { get set }
    
    mutating func push(_ item: Item)
    mutating func pop() -> Item
}

struct StackAssociatedType<Element>: Container {
    typealias Item = Element
    
//    var items = [Element]()
    
    var items = Array<Element>()
    
    mutating func push(_ item: Element) {
        items.append(item)
    }
    
    mutating func pop() -> Element {
        items.removeLast()
    }
}

var stackInstance = StackAssociatedType<String>()

stackInstance.push("Primero")
stackInstance.push("Segundo")
stackInstance.push("Tercero")
stackInstance.push("Cuarto")

stackInstance.items


