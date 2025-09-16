import UIKit

var greeting = "Hello, playground"
class Node<T> {
    
    var value: T
    var next: Node<T>?
    
    init(value: T, next: Node<T>? = nil) {
        self.value = value
        self.next = next
    }
}

struct LinkedList<T: Equatable> {
    var head: Node<T>?
    
    var isEmpty: Bool { head == nil }
    
    mutating func add(node: Node<T>) {
        if let listHead = head {
            var currentNode: Node<T> = listHead
            while let nextItem = currentNode.next {
                currentNode = nextItem
            }
            currentNode.next = node
        } else {
            head = node
        }
    }
    
    mutating func insertAfter(node: Node<T>, nodeAfterValue: Node<T>) {
        if let listHead = head {
            var currentNode: Node<T> = listHead
            while currentNode.value != nodeAfterValue.value {
                if let nextNode = currentNode.next {
                    currentNode = nextNode
                } else {
                    print("error, no node with value \(nodeAfterValue.value)")
                    return
                }
            }
            node.next = currentNode.next!
            currentNode.next! = node
        }
    }
    
        mutating func delete(nodeValue: T) {
        if let listHead = head {
            var currentNode: Node<T> = listHead
            var beforeTheDeleted: Node<T>!
            while currentNode.value != nodeValue {
                if let nextNode = currentNode.next {
                    beforeTheDeleted = currentNode
                    currentNode = nextNode
                } else {
                    print("error, no node for value \(nodeValue)")
                    return
                }
            }
            if let nodeNext = currentNode.next {
                beforeTheDeleted.next = nodeNext
                currentNode.next = nil
            } else {
                beforeTheDeleted.next = nil
            }
            
        } else {
            print("error, empty list")
            return
        }
    }
    
    func printList() {
        var currentNode = head
        while let node = currentNode {
            print(node.value)
            currentNode = node.next
        }
    }
}

// Example usage
var list = LinkedList<Int>()
list.delete(nodeValue: 15)
list.add(node: Node(value: 10))
list.add(node: Node(value: 20))
list.add(node: Node(value: 30))
list.insertAfter(node: Node(value: 15), nodeAfterValue: Node(value: 10))
list.insertAfter(node: Node(value: 15), nodeAfterValue: Node(value: 25))
list.printList()
list.delete(nodeValue: 15)

list.printList()  // Prints 10, 20, 30
list.delete(nodeValue: 15)
